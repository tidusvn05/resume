<div class="container">
  <header>
    <div class="name-wrapper">
      <div id="fullname" class="title">
        {{ config.resume.name }}
      </div>
      <div id="jobtitle" class="sub-title">
        {{ config.resume.jobtitle }}
      </div>
    </div>
    <div id="contact" class="contact">
      {% for item in config.resume.contact %}
      <div class="contact-item">
        {% if item.link %}
        <a href="{{ item.link }}">
        {% endif %}
        <i class="fa {{ item.icon }} aria-hidden="true></i> {{ item.text }}
        {% if item.link %}
        </a>
        {% endif %}
      </div>
      {% endfor %}
    </div>
  </header>

  <section id="summaries">
    <div class="section-title">
      Professional Summary
    </div>
    <ul class="section-flex">
      {% for item in config.resume.professional_summaries %}
      <li class="block-content">
        {{ item.value }}

        {% for sub_value in item.sub_values %}
          <div class="block-content"> - {{ sub_value }} </div>
        {% endfor %}
      </li>
      {% endfor %}
    </ul>
  </section>

  <section id="education">
    <div class="section-title">
      Education
    </div>
    <div class="section-content">
      {% for edu in config.resume.education %}
      <div class="block">
        <div class="block-title">
          {{ edu.university }}
        </div>
        <div class="block-subtitle">
          {{ edu.duration }} | {{ edu.location }}
        </div>
        <div class="block-content">
          {{ edu.major }}
        </div>
      </div>
      {% endfor %}
    </div>
  </section>

  <section id="languages">
    <div class="section-title">
      Languages
    </div>
    <div class="section-content section-flex">
      {% for language in config.resume.languages %}
      <div class="block block-square">
        <div class="block-title">
          {{ language.name }}
        </div>
        <div class="block-content">
          {{ language.proficiency }}
        </div>
      </div>
      {% endfor %}
    </div>
  </section>

  <section id="skills">
    <div class="section-title">
      Skills
    </div>
    <div class="section-content">
      {% for skill in config.resume.skills %}
      <div class="block">
        <div class="block-title">
          {{ skill.title }}
        </div>
        <div class="block-content">
          {{ skill.items }}
        </div>
      </div>
      {% endfor %}
    </div>
  </section>

  <section id="experience">
    <div class="section-title">
      Experience
    </div>
    <div class="section-content">
      {% for exp in config.resume.experience %}
      <div class="block">
        <div class="block-title">
          {{ exp.title }}
        </div>
        <div class="block-subtitle">
          {{ exp.duration }} | {{ exp.company }}
        </div>
        <div class="block-content">
          {% for desc in exp.descriptions %}
            - {{ desc }} <br/>
          {% endfor %}
        </div>
      </div>
      {% endfor %}
    </div>
  </section>


  <section id="projects">
    <div class="section-title">
      Projects
    </div>
    <div class="section-content">
      {% for project in config.resume.projects %}
      <table class='project'>
        {% for key, val in project %}
          <tr {% if loop.first %} class="first"{% endif %} >
            <td>{{ key|capitalize }}</td>
            <td>{{ val }}</td>
          </tr>
        {% endfor %}
      </table>
      {% endfor %}
    </div>
  </section>

  
</div>
