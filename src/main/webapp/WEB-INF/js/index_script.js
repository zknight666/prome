document.addEventListener("DOMContentLoaded", () => {
    getProjects();
});

function getProjects() {
  fetch("/prome/project/getMainProjects")
    .then(response => response.json())
    .then(projects => {console.log("Projects:", projects); displayProjects(projects);})
    .catch(error => console.error("Error fetching projects:", error));
}

function displayProjects(projects) {
    $('#card_section').html('');

    projects.forEach(projects => {
        const techStacks = Object.entries(projects.tech_stacks)
            .filter(([, value]) => value === 'y')
            .map(([key]) => `<li>${key}</li>`)
            .join('');

        const projectCard = `
					           <div class="project-card">
					                <h3>${project.title}</h3>
					                <p>Field: ${project.field}</p>
					                <h4>Recruitment Fields</h4>
					                <ul class="recruitment-fields">${recruitmentFields}</ul>
					                <h4>Tech Stacks</h4>
					                <ul class="tech-stacks">${techStacks}</ul>
					            </div>
       						`;
        $('#card_section').append(projectCard);
    });
}