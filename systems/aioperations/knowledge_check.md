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

<div class="quiz-page-wrapper">
  
  {% assign exam_questions = site.data.aioperations_quiz.exam.questions %}
  {% assign grouped_questions = exam_questions | group_by: "domain" %}

  <h3 id="total-score" class="score-text">Score: --</h3>

  <div class="tab">
    {% for group in grouped_questions %}
      <button class="tablinks {% if forloop.first %}active{% endif %}" onclick="openDomain(event, 'domain-{{ forloop.index }}')">
        {{ group.name }} 
        <span class="tab-score" id="tab-score-{{ forloop.index }}" style="font-size: 0.8em; color: #c20000; font-weight: bold; margin-left: 5px;">(0/0)</span>
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
                            <span style="font-weight: normal;">{{ opt_key }}. {{ opt_text }}</span>
                          </label>
                        {% endfor %}
                      </form>
                      <button class="check-answer-btn" data-question-id="{{ q.id }}">Check answer</button>

<div class="answer-explanation" id="explanation-{{ q.id }}" 
     style="margin-top: 10px; display: none; padding: 10px; background: #f9f9f9; border-left: 4px solid transparent; border-right: 4px solid transparent;">
  <strong id="status-{{ q.id }}"></strong> 
  <strong id="label-{{ q.id }}">Explanation:</strong> {{ q.explanation }}
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
  const totalScoreEl = document.getElementById('total-score');
  
  let grandTotalCorrect = 0;
  let grandTotalQuestions = 0;

  domainSections.forEach((section, index) => {
    const domainIndex = index + 1;
    const tabScoreSpan = document.getElementById(`tab-score-${domainIndex}`);
    const questions = section.querySelectorAll('.question-block');
    let domainCorrect = 0;
    let domainTotal = questions.length;

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
    grandTotalQuestions += domainTotal;
  });

  const totalPercentage = grandTotalQuestions > 0 ? Math.round((grandTotalCorrect / grandTotalQuestions) * 100) : 0;
  totalScoreEl.textContent = `Score: ${grandTotalCorrect} / ${grandTotalQuestions} (${totalPercentage}%)`;
}

document.addEventListener('DOMContentLoaded', function () {
  calculateScore();

  document.querySelectorAll('.check-answer-btn').forEach(function (btn) {
      btn.addEventListener('click', function () {
        const qid = this.getAttribute('data-question-id');
        const form = document.querySelector('.question-form[data-question-id="' + qid + '"]');
        const selected = form.querySelector('input[type="radio"]:checked');
        const explEl = document.getElementById('explanation-' + qid);
        const statusEl = document.getElementById('status-' + qid);
        const labelEl = document.getElementById('label-' + qid); // Target the label
        const correctKey = document.getElementById('correct-' + qid).getAttribute('data-correct');

        if (!selected) {
          alert('Please select an answer.');
          return;
        }

        if (selected.value === correctKey) {
          statusEl.textContent = 'Correct! ';
          statusEl.style.color = 'var(--success)';
          explEl.style.borderLeftColor = 'var(--success)';
          explEl.style.borderRightColor = 'var(--success)';
          labelEl.textContent = 'Explanation:'; // Set back to Explanation if correct
        } else {
          statusEl.textContent = 'Incorrect. ';
          statusEl.style.color = 'var(--error)';
          explEl.style.borderLeftColor = 'var(--error)';
          explEl.style.borderRightColor = 'var(--error)';
          labelEl.textContent = 'Help:'; // Change to Help if incorrect
        }
        
        explEl.style.display = 'block';
        calculateScore();
      });
    });


});
</script>