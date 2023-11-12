document.addEventListener("DOMContentLoaded", () => {
    document.getElementById('calculate-bmi').addEventListener('click', function() {
      var height = parseFloat(document.getElementById('height-input').value);
      var weight = parseFloat(document.getElementById('weight-input').value);
      if (height > 0 && weight > 0) {
        var bmi = (weight / (height * height)).toFixed(2);
        document.getElementById('bmi-result').innerText = `Seu IMC é: ${bmi}`;
      } else {
        document.getElementById('bmi-result').innerText = 'Por favor, insira valores válidos para altura e peso.';
      }
    });
  });


function incrementWaterIntake() {
  var progressBar = document.getElementById('water-progress');
  var progressText = document.getElementById('water-text');

  var currentValue = parseInt(progressBar.value);
  currentValue = (currentValue >= 10) ? 0 : currentValue + 1;

  progressBar.value = currentValue;
  progressText.textContent = currentValue + " de " + progressBar.max + " copos";
}

function incrementStepCount() {
  var stepCountParagraph = document.getElementById('step-count');
  var currentStepCount = parseInt(stepCountParagraph.textContent.replace(/\D/g,''));

  var newStepCount = (currentStepCount + 100) % 5000;

  stepCountParagraph.textContent = newStepCount.toLocaleString() + " passos";
}
