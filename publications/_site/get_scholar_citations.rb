#!/usr/bin/ruby
require 'rubygems'
require 'net/http'
require 'nokogiri'
require 'spreadsheet'


#
# @Jorge Cardoso, 2011
#
# This is a very primitive program that makes the job of looking for references of papers that are found by Googl Scholar
# It was coded in a few afternoon, so do not expect it to behave at 100% 
# 



$i = 0
$g_blocked  = 0
 
def escape_title(s)
    s = s.gsub(/(<\/a>)|(&nbsp;)/i,'')
    s = s.gsub(/&hellip;/i,'...')
    return s
end

def save_citation_page(id, start=0, max_num=10)
    str = '/scholar?start=%d&cites=%s'%[start,id]
    enc_uri = URI.escape(str)
    Net::HTTP.start('scholar.google.com') do |http|
    	req = Net::HTTP::Get.new(enc_uri)
        
        s = http.request(req).body
	
		# save page to disk
		myfilename = '%s-%d.html'%[id, start]
		myfile = File.new(myfilename, "w+")    # open file for read and write
		myfile.puts(s)         				   # write the HTML page	
		myfile.close
    end
end

def isNumeric?(s)
  begin
    Float(s)
  rescue
    false # not numeric
  else
    true # numeric
  end
end

def contains_a_year?(s)
  s.strip!
  if s.to_s.match(/\d\d\d\d/) != nil
	return true
  else 
	return false
  end
end

def get_year(publication_year)
	year = "Year/NA"
	
	# We are luck, it a number. Probably a year
	if isNumeric?(publication_year) == true
		year = publication_year
		return year
	end
	
	# Does the publication has a publication identifier and the year it was published? e.g. ICWS IEEE, 2010
	if publication_year.rindex(', ')
		year        = publication_year[ publication_year.rindex(', ')+1, publication_year.size]
		
		# it is not a number? Humm. This is the case ICWS, 2010 a good conference
		if isNumeric?(year) == false	 
			puts year
			puts "looks numeric but it is not"
			year = "Year/NA"
		end		
	end
	return year
end

def get_publication(publication_year)
	publication = "Publication/NA"
	# Does the publication has a publication identifier and the year it was published?
	if publication_year.rindex(', ')
		publication = publication_year[0, publication_year.rindex(', ')]
	else 
		# if we do not have a comma then we have a direct Year or Publication
		# Is it a Year? i.e. can we convert it to an integer?
		if isNumeric?(publication_year)
			publication = "Publication/NA"
		else
			publication = publication_year
		end
	end
	return publication
end

def get_string_between(page, start_index, token_pos1, token_pos2)
	
	string = ''
	end_index = 0
	pos1 = page.index(token_pos1, start_index)
	if pos1 
		pos1 += token_pos1.size
		pos2 = page.index(token_pos2, pos1)
		if pos2 
			string = page[pos1, pos2-pos1]
			string = escape_title(string)
		end
	end
	return string
end
 

def get_citation_list(paper_title, id, start=0, max_num=10)
    str = '/scholar?start=%d&cites=%s'%[start,id]
	#puts str
    enc_uri = URI.escape(str)
    papers = []
    Net::HTTP.start('scholar.google.com') do |http|
        req = Net::HTTP::Get.new(enc_uri)

        page = http.request(req).body     
  
		authorspubyear = "Authors/NA"
		link = "Link/NA"
		abstract = "Abstract/NA"
  
		doc = Nokogiri::HTML(page)
		doc.css("div.gs_r").map do |eventnode|
			authorspubyear = eventnode.at_css("div.gs_a").text.strip
		  
			if eventnode.at_css("h3 a")
				title = eventnode.at_css("h3 a").text.strip
				link = eventnode.at_css("h3 a")['href']
				#abstract = eventnode.at_css("div.gs_rs").text.strip
			else
				if eventnode.at_css("h3")
					title = eventnode.at_css("h3").text.strip
				end	
			end
			#puts authorspubyear, title, link, abstract 
		
			pubFields = authorspubyear.split(" - ")
			
			authors          = "Authors/NA"
			publication_year = "PubYear NA"
			publisher        = "Publisher/NA"
			publication 	 = "Publication/NA"
			year 		 = "Year/NA"
				
			# We have all the 3 fields
			if pubFields.size == 3
				authors          = pubFields[0]
				publication_year = pubFields[1]
				publisher        = pubFields[2]
					
				publication = get_publication(publication_year)
				year = get_year(publication_year)
			end

			# We only have 2 fields
			# HG Fill&hellip; - protege.stanford.edu
			# M Kaliczy&#324;ska - piap.waw.pl
			# D Hall, JA Miller, J Arnold, KJ Kochut, AP Sheth&hellip; - Genomics of Plants and  &hellip;, 2003
			if pubFields.size == 2
				authors  = pubFields[0]

				# is the second field a host (www.example.com) of a publicaiton-year
				re = /
						(?:           # these parens for grouping only
						  (?! [-_] )  # lookahead for neither underscore nor dash
						  [\w-] +     # hostname component
						  \.          # and the domain dot
						) +           # now repeat that whole thing a bunch of times
						[A-Za-z]      # next must be a letter
						[\w-] +       # now trailing domain part
					 /x               # /x for nice formatting
					
				
				if re.match(pubFields[1]) 
					publisher = pubFields[1]
				else
					publication = get_publication(pubFields[1])
					year = get_year(pubFields[1])
				end
					
			end		
	
			
			$i += 1
			output_str = title + "||" + link + "||"  + authors + "||"  + publication + "||"  + year.gsub(/\s+/,"") + "||"  + publisher
			full_str = paper_title + "||" + id.to_s() + "||" + output_str
			papers << full_str
	
		end	
    end
	return papers		
end
 
 
def get_citation_pages(enc_uri, paper_title)

	$g_blocked = 0

	Net::HTTP.start('scholar.google.com') do |http|
		req = Net::HTTP::Get.new(enc_uri)
		
		s = http.request(req).body
		blocked = s.index('Our systems have detected unusual traffic from your computer network');
		
		if(blocked)
			puts "********************************************************************"
			puts "*                                                                  *"
			puts "* Due to many requests your IP Address has been blocked by Google  *"
			puts "* Open your browser and access to http://scholar.google.com and    *"
			puts "* enter the CAPTCHA  to unlock your IP Address  	           *"
			puts "*                                                                  *"
			puts "********************************************************************"
			
			$g_blocked = 1

			return "1"	
		end

		pos1 = s.index('Cited by ')
		citedbySize = 'Cited by '.bytesize
		if pos1
			#pos2 = s.index('</a>', pos1 + citedbySize)
			pos2 = s.index('</a>', pos1)
			citation_num = Integer(s[pos1 + citedbySize, pos2 - pos1 - citedbySize])

			#puts citation_num, pos1, pos2, citedbySize, pos2 - pos1 - citedbySize, s[pos2-1]

			pos3 = s.rindex('cites', pos1)
			pos4 = s.index('amp', pos3)
			citation_id = s[pos3+6, pos4-pos3-7]
			
			#puts "Citation ID: " + citation_id
		
			# Get Authors, Proceedings, and Editor  
			# <a href="/citations?hl=en&amp;user=n9JFmAkAAAAJ&amp;oi=sra">J Cardoso</a>
			
			#author_token = '<span class=gs_a>' , this was an old format that has changed in 2012
			author_token = '<div class="gs_a">'
			authorpos1 = s.index(author_token)
			authorpos1 += author_token.size
			authorpos1 = s.index('">', authorpos1)
			authorpos1 += '">'.size
			#authorpos2 = s.index('</span>', authorpos1), this was an old format that has changed in 2012
			authorpos2 = s.index('</div>', authorpos1)
			author =  s[authorpos1, authorpos2-authorpos1]
			author = escape_title(author)
		
			
			puts "" 
			puts "What I found ..." 
			puts "Title: \t\t" + paper_title
			puts "Paper ID: \t" + citation_id
			puts "Citations: \t" + citation_num.to_s() 
 			puts "Authors-Yr-Pub: " + author
			
			tofile = "ID: " + citation_id.to_s() + "; Cits: " + citation_num.to_s() + "; Til: " + paper_title + "\n";
		
			pages = citation_num / 10
			papers = []

			mydir = paper_title.gsub(':', '-')
			mydir = mydir.gsub('?', '-')
			
			
			0.upto(pages-1){ |num|
				papers += get_citation_list(paper_title, citation_id, num*10)
				##save_citation_page(citation_id, num*10)
				
				if($sleep == true)
					time = rand($sleeptime)
					puts "waiting(%d)" %time 
					sleep time # seconds
				end

			}
			num_in_last_page = citation_num - pages*10
			papers += get_citation_list(paper_title, citation_id, pages*10, num_in_last_page)
			
			return papers;	
			
		else
			return "";
			print "no citation found! ", paper_title,"\n";
		end
	end
end


filename = "publications.txt"
unless (File.exist?(filename) and File.file?(filename))
	puts "Missing file publications.txt in the current directory. "
	exit 
end	

#read publications from text file named publications.txt
text_file = File.open(filename)
papers = text_file.readlines


puts "Please enter the Publication Author Name:"
author = STDIN.gets

$sleep = true
$sleeptime = 60 #seconds


#
#create new excel file and define header titles
#
book = Spreadsheet::Workbook.new
sheet1 = book.create_worksheet
sheet1.row(0).push 'PUB_ID','Number','Publication Title','Google scholar ID','Cited by Publication Title','Cited by Publication link ','Cited by Publication Authors','Info','Year','Source'
###############################################



excell_row = 1;

for paper in 0...papers.length 

id_pub, *publication_title = papers[paper].split("||")


if publication_title.length != 1 
	next
end

publication_title = publication_title[0].strip;

if publication_title == ""
	next;
end	

if isNumeric?(id_pub) != true
	next
end

print "Googling paper ID ", paper , ", ", publication_title, "\n";
   
   	
	 if($sleep == true)
                 time = rand($sleeptime)
                 puts "waiting(%d)" %time
                 sleep time # seconds
    end

	
	encoded_title = publication_title;
	encoded_title = encoded_title.gsub(" ","+");
	encoded_title = encoded_title.gsub("&","%26");

	
	encoded_author = author.strip;
	encoded_author = encoded_author.gsub(" ","+");

	
	enc_uri = '/scholar?q=%22'+encoded_title+'%22+author%3A%22'+encoded_author+'%22&num=1'
	
	
	citations_out = get_citation_pages(enc_uri, publication_title)

	if citations_out.length > 0 and $g_blocked == 0
		

		citations_out.each_with_index {|p,i|
		  sheet1.row(excell_row).push id_pub.to_i
		  sheet1.row(excell_row).push "#{i+1}".to_i
		 

		"#{p}".split('||').each{|str|
			sheet1.row(excell_row).push str
		 }
		  excell_row += 1;	
		}
	end

end


time = Time.new
fileTimeName = time.strftime("%Y%m%d%H%M%S");
fileTimeName = fileTimeName+"_citations.xls";

#save excel file
book.write fileTimeName


