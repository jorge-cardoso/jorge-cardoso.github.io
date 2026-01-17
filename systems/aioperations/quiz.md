---
layout: media
title: AI Operations Quiz
toc: true
ads: false
comments: false
published: true
---

<link rel="stylesheet" href="{{ 'systems/aioperations/quiz.css' | relative_url }}">

The following questions validate your technical proficiency in monitoring, troubleshooting, and optimizing AI infrastructure, specifically focusing on the orchestration of workloads using tools like Kubernetes and Slurm, GPU utilization (including MIG), DPU connectivity, performance tuning, as well as the management of NVIDIA-specific software.
This resource helps MLOps engineers and system architects prepare for the [NVIDIA-Certified Professional: AI Operations (NCP-AIO)](https://www.nvidia.com/en-us/learn/certification/ai-operations-professional/).

<!-- <p style="text-align: right; color: var(--text-muted); font-size: 0.9rem;">
{{ site.data.aioperations_quiz.exam.name }} (v{{ site.data.aioperations_quiz.exam.version }})
</p> -->

<div class="quiz-page-wrapper">
  
  {% assign exam_questions = site.data.aioperations_quiz.exam.questions %}
  {% assign grouped_questions = exam_questions | group_by: "domain" %}

  <div class="score-container-wrapper" style="margin-top: 20px; padding: 20px; border-radius: 8px;">
    
      <div style="display: flex; justify-content: space-between; align-items: tops; flex-wrap: wrap; gap: 20px;">
      
      <div style="flex: 0.65; min-width: 100px;">
        <button id="calc-score-btn" style="padding: 10px 20px; cursor: pointer;">Score</button>
      </div>

      <div id="score-summary" style="flex: 2; min-width: 300px; text-align: left; border-left: 1px solid #eee; padding-left: 20px;">
        <h3 id="total-score" class="score-text">Overall Score: --</h3>
        <div id="domain-breakdown">
          <div class="domain-row">Select answers and click calculate to see domain breakdown.</div>
        </div>
      </div>
      
    </div>
  </div>

  <div class="tab">
    {% for group in grouped_questions %}
      <button class="tablinks {% if forloop.first %}active{% endif %}" onclick="openDomain(event, 'domain-{{ forloop.index }}')">
        {{ group.name }}
      </button>
    {% endfor %}
  </div>

  <div id="quiz-container">
    <div id="exam">
      {% for group in grouped_questions %}
        <div id="domain-{{ forloop.index }}" class="tabcontent" style="{% if forloop.first %}display: block;{% else %}display: none;{% endif %}">
          <table class="domain-table">
            <tbody>
              {% for q in group.items %}
                <tr id="question-{{ q.id }}">
                  <td>
                    <div class="question-block">
                      <div class="question">{{ q.id }}. {{ q.text }}</div>
                      <form class="question-form" data-question-id="{{ q.id }}">
                        {% for key in q.options %}
                          {% assign opt_key = key[0] %}
                          {% assign opt_text = key[1] %}
                          <label>
                            <input type="radio" name="q{{ q.id }}" value="{{ opt_key }}">
                            <span><strong>{{ opt_key }}.</strong> {{ opt_text }}</span>
                          </label>
                        {% endfor %}
                      </form>
                      <button class="check-answer-btn" data-question-id="{{ q.id }}">Check answer</button>
                      <div class="answer-result" id="result-{{ q.id }}" style="margin-top: 10px; font-weight: bold;"></div>
                      <div class="answer-explanation" id="explanation-{{ q.id }}" style="margin-top: 10px; display: none; padding: 10px; background: #f9f9f9; border-left: 4px solid var(--success);">
                        <strong>Explanation:</strong> {{ q.explanation }}
                      </div>
                      <span class="correct-answer" id="correct-{{ q.id }}" data-correct="{{ q.correct_answer }}" style="display: none;"></span>
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

<script>
function openDomain(evt, domainId) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) { tabcontent[i].style.display = "none"; }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) { tablinks[i].classList.remove("active"); }
  document.getElementById(domainId).style.display = "block";
  evt.currentTarget.classList.add("active");
}

document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('.check-answer-btn').forEach(function (btn) {
    btn.addEventListener('click', function () {
      const qid = this.getAttribute('data-question-id');
      const form = document.querySelector('.question-form[data-question-id="' + qid + '"]');
      const selected = form.querySelector('input[type="radio"]:checked');
      const resultEl = document.getElementById('result-' + qid);
      const explEl = document.getElementById('explanation-' + qid);
      const correctKey = document.getElementById('correct-' + qid).getAttribute('data-correct');

      if (!selected) {
        resultEl.textContent = 'Please select an answer.';
        resultEl.style.color = 'orange';
        return;
      }

      if (selected.value === correctKey) {
        resultEl.textContent = '✅ Correct! (' + correctKey + ')';
        resultEl.style.color = 'var(--success)';
      } else {
        resultEl.textContent = '❌ Incorrect. Correct answer: ' + correctKey;
        resultEl.style.color = 'var(--error)';
      }
      explEl.style.display = 'block';
    });
  });

  const calcBtn = document.getElementById('calc-score-btn');
  calcBtn.addEventListener('click', function () {
    const domainSections = document.querySelectorAll('.tabcontent');
    const breakdownEl = document.getElementById('domain-breakdown');
    const totalScoreEl = document.getElementById('total-score');
    
    let grandTotalCorrect = 0;
    let grandTotalQuestions = 0;
    breakdownEl.innerHTML = '';

    domainSections.forEach((section, index) => {
      const domainName = document.querySelectorAll('.tablinks')[index].textContent.trim();
      const questions = section.querySelectorAll('.question-form');
      let domainCorrect = 0;
      let domainTotal = questions.length;

      questions.forEach(form => {
        const qid = form.getAttribute('data-question-id');
        const selected = form.querySelector('input[type="radio"]:checked');
        const correctKey = document.getElementById('correct-' + qid).getAttribute('data-correct');
        if (selected && selected.value === correctKey) { domainCorrect++; }
      });

      grandTotalCorrect += domainCorrect;
      grandTotalQuestions += domainTotal;

      const percentage = domainTotal > 0 ? Math.round((domainCorrect / domainTotal) * 100) : 0;
      const resultRow = document.createElement('div');
      resultRow.className = 'domain-row';
      resultRow.innerHTML = `<strong>${domainName}:</strong> ${domainCorrect}/${domainTotal} (${percentage}%)`;
      breakdownEl.appendChild(resultRow);
    });

    const totalPercentage = Math.round((grandTotalCorrect / grandTotalQuestions) * 100);
    totalScoreEl.textContent = `Overall Score: ${grandTotalCorrect} / ${grandTotalQuestions} (${totalPercentage}%)`;
  });
});
</script>