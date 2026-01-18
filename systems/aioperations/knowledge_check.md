---
layout: media
title: AI Operations 
toc: true
ads: false
comments: false
published: true
---

## Knowledge Check

<link rel="stylesheet" href="{{ 'systems/aioperations/knowledge_check.css' | relative_url }}">

The following questions validate your technical proficiency in monitoring, troubleshooting, and optimizing AI infrastructure, specifically focusing on 
Installation using BCM, K8s initialization, and DOCA services; 
Administration using tools like Slurm, Kubernetes, and Run:ai, as well as GPU configuration (including MIG);
Workload management for inference/training deployment and NGC container use; and
Troubleshooting Fabric Manager issues, using DCGM diagnostics, and optimizing Storage bottlenecks.
This resource helps MLOps engineers and system architects prepare for the [NVIDIA-Certified Professional: AI Operations (NCP-AIO)](https://www.nvidia.com/en-us/learn/certification/ai-operations-professional/).


Found this Knowledge Check helpful? 
<a href="https://www.buymeacoffee.com/jorge_cardoso" target="_blank" class="buy-coffee-btn">
  <img src="{{ 'systems/aioperations/buy_me_a_coffee.png' | relative_url }}" class="buy-coffee-img"
       alt="Buy Me A Coffee">
</a>


<div class="quiz-page-wrapper" style="margin-top: 50px;">
  
  <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; width: 100%; min-height: 50px;">
      
      <div style="flex: 1; display: flex; align-items: center;"></div>

      <div style="flex: 1; display: flex; align-items: center; justify-content: center;">
        <div class="score-text" style="color: black; margin: 0; white-space: nowrap; font-size: 1.17em; font-weight: bold; border: none !important;">
          Score: <span id="score-value" style="color: #c20000;"> 0 / 120 (0%) </span>
        </div>
      </div>

      <div style="flex: 1; display: flex; align-items: center; justify-content: flex-end;">
        <span style="font-size: 0.9em; font-weight: normal; color: black;">
          <a href="#" onclick="localStorage.removeItem('ncp_aio_quiz_save'); location.reload(); return false;" style="color: gray; text-decoration: none;"> Reset </a>
          <span style="margin: 0 5px; color: #ccc;">|</span>
          <a href="#" id="download-questions-pdf" style="color: gray; text-decoration: none;"> PDF </a>
        </span>
      </div>
      
  </div>

  {% assign quiz_files = "inst_deploy,administration,workload_management,troubleshooting_optimization" | split: "," %}

  <div class="tab">
    {% for file_name in quiz_files %}
      {% assign quiz_data = site.data[file_name] %}
      <button class="tablinks {% if forloop.first %}active{% endif %}" onclick="openDomain(event, 'domain-{{ forloop.index }}')">
        {{ quiz_data[0].area }} 
        <span class="tab-score" id="tab-score-{{ forloop.index }}" style="font-size: 0.8em; color: #c20000; font-weight: bold; margin-left: 5px;">(0/0)</span>
      </button>
    {% endfor %}
  </div>

  <div id="quiz-container">
    <div id="exam">
      {% for file_name in quiz_files %}
        {% assign questions = site.data[file_name] %}
        <div id="domain-{{ forloop.index }}" class="tabcontent" style="{% if forloop.first %}display: block;{% else %}display: none;{% endif %}">
          <table class="domain-table">
            <tbody>
                
                {% for q in questions %}

                  {% assign unique_id = file_name | append: '-' | append: q.id %}
                  
                  <tr id="question-{{ unique_id }}">
                    <td>

                      <div class="question-block">
                        <div class="question">{{ q.id }}. {{ q.question | escape }}</div>
                        
                        <form class="question-form" data-question-id="{{ unique_id }}">

                          {% for opt in q.options %}
                            {% assign opt_key = opt[0] %}
                            {% assign opt_text = opt[1] %}
                             
                            <label>
                              <input type="radio" name="radio-{{ unique_id }}" value="{{ opt_key }}">
                              <span style="font-weight: normal;"> {{ opt_key }}. {{ opt_text | escape }} </span>
                            </label>
                          {% endfor %}
                        
                        </form>

                        <button class="check-answer-btn" data-question-id="{{ unique_id }}">Check answer</button>

                        <div class="answer-explanation" id="explanation-{{ unique_id }}" 
                            style="margin-top: 10px; display: none; padding: 10px; background: #f9f9f9; border-left: 4px solid transparent; border-right: 4px solid transparent;">
                          <strong id="status-{{ unique_id }}"></strong> 
                          <strong id="label-{{ unique_id }}">Explanation:</strong> {{ q.explanation | escape }}
                          <br><small>Source: {{ q.source_reference }} (Ch. {{ q.source_chapter }}, p. {{ q.source_pages }})</small>
                        </div>

                        <span class="correct-answer" id="correct-{{ unique_id }}" data-correct="{{ q.correct_answer }}" style="display: none;"></span>
                      
                      </div>
                    </td>
                  </tr>

                {% endfor %}

            </tbody>
          </table>
          
        </div>

      {% endfor %}

    </div>
  </div>
</div>


## References

Preparing for the *NVIDIA-Certified Professional: AI Operations (NCP-AIO)* requires an understanding of cluster management, workload orchestration, and GPU optimization.
Below is a curated list of official documentation and resources to help you master the exam domains.

* [Base Command Manager](https://docs.nvidia.com/base-command-manager/index.html): Study the "Installation Guide" and "Administrator Guide" to understand cluster provisioning and node health.
* [DCGM (Data Center GPU Manager)](https://docs.nvidia.com/datacenter/dcgm/latest/user-guide/index.html): Study for monitoring cluster health, running diagnostics, and performance profiling.
* [Multi-Instance GPU (MIG)](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/index.html): You must know how to configure and manage MIG profiles for various workloads.
* [Fabric Manager](https://docs.nvidia.com/datacenter/tesla/fabric-manager-user-guide/index.html): Review troubleshooting procedures for the fabric manager service.
* [Slurm](https://slurm.schedmd.com/documentation.html): Focus on job scheduling, resource allocation (GRES), and partition management.
* [NVIDIA GPUDirect RDMA](https://docs.nvidia.com/cuda/gpudirect-rdma/index.html): Understand components used to accelerate data movement across networks.
* [Run:ai](https://www.nvidia.com/en-us/software/run-ai/): Learn to manage GPU fractions, compute quotas, and project-based resource allocation for multi-tenant teams.
* [Kubernetes and NVIDIA GPUs](https://docs.nvidia.com/datacenter/cloud-native/index.html#kubernetes-and-nvidia-gpus): Focus on the NVIDIA GPU Operator for automating driver deployment and managing GPU resources in containerized environments.
* [NGC](https://www.nvidia.com/en-us/gpu-cloud/): Understand how to pull optimized containers, models, and Helm charts while using the NGC CLI for registry management.
* [Magnum IO](https://developer.nvidia.com/blog/accelerating-io-in-the-modern-data-center-magnum-io-storage-partnerships/): Study the architecture for GPUDirect Storage (GDS) and how it bypasses the CPU to accelerate data movement.



<script>
const STORAGE_KEY = 'ncp_aio_quiz_save';

function openDomain(evt, domainId) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) { tabcontent[i].style.display = "none"; }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) { tablinks[i].classList.remove("active"); }
  document.getElementById(domainId).style.display = "block";
  evt.currentTarget.classList.add("active");
}

function calculateScore() {
  const domainSections = document.querySelectorAll('.tabcontent');
  const totalScoreEl = document.getElementById('score-value');
  
  let grandTotalCorrect = 0;
  let grandTotalQuestions = 0;

  domainSections.forEach((section, index) => {
    const domainIndex = index + 1;
    const tabScoreSpan = document.getElementById(`tab-score-${domainIndex}`);
    const questions = section.querySelectorAll('.question-block');
    let domainCorrect = 0;
    let domainTotal = questions.length;
    grandTotalQuestions += domainTotal;

    questions.forEach(block => {
      const qid = block.querySelector('.question-form').getAttribute('data-question-id');
      const selected = block.querySelector('input[type="radio"]:checked');
      const correctKey = document.getElementById('correct-' + qid).getAttribute('data-correct');      
      const explanationVisible = document.getElementById('explanation-' + qid).style.display === 'block';

      if (explanationVisible && selected && selected.value === correctKey) { 
        domainCorrect++; 
      }
    });

    if (tabScoreSpan) { tabScoreSpan.textContent = `(${domainCorrect}/${domainTotal})`; }
    grandTotalCorrect += domainCorrect;
    // grandTotalQuestions += domainTotal;
  });

  const totalPercentage = grandTotalQuestions > 0 ? Math.round((grandTotalCorrect / grandTotalQuestions) * 100) : 0;
  
  const scoreValueEl = document.getElementById('score-value');
  if (scoreValueEl) {
    scoreValueEl.textContent = `${grandTotalCorrect} / ${grandTotalQuestions} (${totalPercentage}%)`;
  }

}

function saveState() {
  const state = {};
  document.querySelectorAll('.question-form').forEach(form => {
    const qid = form.getAttribute('data-question-id');
    const selected = form.querySelector('input[type="radio"]:checked');
    const explVisible = document.getElementById('explanation-' + qid).style.display === 'block';
    
    if (selected || explVisible) {
      state[qid] = {
        selected: selected ? selected.value : null,
        checked: explVisible
      };
    }
  });
  localStorage.setItem(STORAGE_KEY, JSON.stringify(state));
}

function loadState() {
  const saved = localStorage.getItem(STORAGE_KEY);
  if (!saved) return;
  
  const state = JSON.parse(saved);
  Object.keys(state).forEach(qid => {
    const data = state[qid];
    const form = document.querySelector(`.question-form[data-question-id="${qid}"]`);
    if (!form) return;

    if (data.selected) {
      const radio = form.querySelector(`input[value="${data.selected}"]`);
      if (radio) radio.checked = true;
    }

    if (data.checked) {
      showResult(qid);
    }
  });
  calculateScore();
}

function showResult(qid) {
  const form = document.querySelector('.question-form[data-question-id="' + qid + '"]');
  const selected = form.querySelector('input[type="radio"]:checked');
  const explEl = document.getElementById('explanation-' + qid);
  const statusEl = document.getElementById('status-' + qid);
  const labelEl = document.getElementById('label-' + qid);
  const correctKey = document.getElementById('correct-' + qid).getAttribute('data-correct');

  if (!selected) return;

  if (selected.value === correctKey) {
    statusEl.textContent = 'Correct! ';
    statusEl.style.color = 'var(--success)';
    explEl.style.borderLeftColor = 'var(--success)';
    explEl.style.borderRightColor = 'var(--success)';
    labelEl.textContent = 'Explanation:';
  } else {
    statusEl.textContent = 'Incorrect. ';
    statusEl.style.color = 'var(--error)';
    explEl.style.borderLeftColor = 'var(--error)';
    explEl.style.borderRightColor = 'var(--error)';
    labelEl.textContent = 'Help:';
  }
  explEl.style.display = 'block';
}

document.addEventListener('DOMContentLoaded', function () {
  loadState();

  document.querySelectorAll('.check-answer-btn').forEach(function (btn) {
    btn.addEventListener('click', function () {
      const qid = this.getAttribute('data-question-id');
      const form = document.querySelector('.question-form[data-question-id="' + qid + '"]');
      const selected = form.querySelector('input[type="radio"]:checked');

      if (!selected) {
        alert('Please select an answer.');
        return;
      }

      showResult(qid);
      calculateScore();
      saveState();
    });
  });
});

document.getElementById('download-questions-pdf').addEventListener('click', function (e) {
    
    e.preventDefault();

    const { jsPDF } = window.jspdf;
    const doc = new jsPDF();
    let yOffset = 20;
    const margin = 15;
    const pageWidth = doc.internal.pageSize.width;
    const pageHeight = doc.internal.pageSize.height;

    const addText = (text, size, style = "normal", spacing = 7, color = [0, 0, 0]) => {
        doc.setFontSize(size);
        doc.setFont("helvetica", style);
        doc.setTextColor(color[0], color[1], color[2]);
        const lines = doc.splitTextToSize(text, pageWidth - (margin * 2));
        
        if (yOffset + (lines.length * spacing) > pageHeight - 20) {
            doc.addPage();
            yOffset = 20;
        }
        
        doc.text(lines, margin, yOffset);
        yOffset += (lines.length * spacing);
    };

    // --- PDF Header ---
    addText("NCP-AIO: My Knowledge Check Progress", 18, "bold", 12);
    addText("Export of answered questions and current results", 10, "italic", 10);
    yOffset += 5;

    const domains = document.querySelectorAll('.tablinks');
    
    domains.forEach((domainTab, index) => {
        const domainId = `domain-${index + 1}`;
        const domainContainer = document.getElementById(domainId);
        
        if (domainContainer) {
            // Filter only blocks where an answer has been "Checked" (explanation is visible)
            const questionBlocks = Array.from(domainContainer.querySelectorAll('.question-block'))
                                        .filter(block => block.querySelector('.answer-explanation').style.display === 'block');

            if (questionBlocks.length > 0) {
                const domainName = domainTab.innerText.split('(')[0].trim();
                yOffset += 5;
                addText(`Domain: ${domainName}`, 14, "bold", 10);
                doc.setDrawColor(200);
                doc.line(margin, yOffset - 2, pageWidth - margin, yOffset - 2);
                yOffset += 5;

                questionBlocks.forEach((block) => {
                    const qid = block.querySelector('.question-form').getAttribute('data-question-id');
                    const qText = block.querySelector('.question').innerText;
                    
                    // Get the user's selected radio button
                    const selectedRadio = block.querySelector('input[type="radio"]:checked');
                    const selectedValue = selectedRadio ? selectedRadio.value : "No answer";
                    const selectedText = selectedRadio ? selectedRadio.parentElement.innerText.trim() : "None";
                    
                    const correctKey = document.getElementById('correct-' + qid).getAttribute('data-correct');
                    const isCorrect = (selectedValue === correctKey);
                    const explanation = block.querySelector('.answer-explanation').innerText.trim();

                    // Write Question
                    addText(qText, 11, "bold", 6);

                    // Write User's Selection
                    const statusColor = isCorrect ? [0, 128, 0] : [194, 0, 0];
                    const statusText = isCorrect ? "(Correct)" : "(Incorrect)";
                    addText(`Your Answer: ${selectedText} ${statusText}`, 10, "bold", 6, statusColor);

                    // Write the Explanation/Answer
                    yOffset += 1;
                    addText(explanation, 10, "normal", 5, [80, 80, 80]);
                    
                    yOffset += 6; 
                });
            }
        }
    });

    // Handle case where no questions are answered
    if (yOffset === 37) { // Only header was added
        addText("No questions have been answered yet. Please check some answers before exporting.", 12, "normal", 10, [150, 0, 0]);
    }

    // --- Footer ---
    const pageCount = doc.internal.getNumberOfPages();
    for (let i = 1; i <= pageCount; i++) {
        doc.setPage(i);
        doc.setFontSize(9);
        doc.setTextColor(150);
        doc.text("Generated Progress Report", margin, pageHeight - 10);
        doc.text(`Page ${i} of ${pageCount}`, pageWidth - margin - 20, pageHeight - 10);
    }
        
    doc.save('My_AI_Operations_Progress.pdf');
});


</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>