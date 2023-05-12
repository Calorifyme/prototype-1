<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My Fitness Website</title>
  <style>
 body {
    background-color: #111;
    color: #fff;
    font-family: sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
   flex-direction: column; /* Add this line to change the direction to vertical */
   align-items: center; /* Add this line to center the cards */
   padding: 20px;
   overflow: hidden;
  }

  nav {
  background-color: #111;
  color: #fff;
  display: flex;
  justify-content: space-between;
  padding: 10px 20px;
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 10;
}

ul {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
}

li {
  margin: 0 10px;
}

a {
  color: #fff;
  text-decoration: none;
  padding: 10px;
  border-radius: 15px;
}

a:hover {
  background-color: #fff;
  color: #111;
}


  .fd-body{
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column; /* Arrange the cards vertically */
        justify-content: center; /* Center the cards vertically */
        align-items: center; /* Center the cards horizontally */
        padding: 20px;
    }

    .wt-body{
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column; /* Arrange the cards vertically */
        justify-content: center; /* Center the cards vertically */
        align-items: center; /* Center the cards horizontally */
        padding: 20px;
    }

    .bmi-body{
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column; /* Arrange the cards vertically */
        justify-content: center; /* Center the cards vertically */
        align-items: center; /* Center the cards horizontally */
        padding: 20px;
    }

    .rc-body{
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column; /* Arrange the cards vertically */
        justify-content: center; /* Center the cards vertically */
        align-items: center; /* Center the cards horizontally */
        padding: 20px;
    }

  .container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-evenly;
    padding: 20px;
  }

  .card {
    background-color: #333;
    border-radius: 5px;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
    margin: 10px;
    padding: 20px;
    width: 350px;
  }

  h1,
  h2,
  h3,
  h4,
  h5,
  h6 {
    margin-top: 0;
  }

  input[type='number'] {
    width: 95%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    font-size: 1.2rem;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
    background-color: #444;
    color: #fff;
  }

  label {
    display: block;
    margin-top: 10px;
  }

  button {
    display: block;
    margin-top: 20px;
    padding: 10px;
    background-color: #0c0;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 1.2rem;
    cursor: pointer;
  }

  button:hover {
    background-color: #0d0;
  }

  table {
    border-collapse: collapse;
    width: 100%;
    margin-top: 20px;
  }

  th,
  td {
    text-align: left;
    padding: 10px;
    border-bottom: 1px solid #fff;
  }

  th {
    background-color: #111;
    color: #fff;
    font-weight: normal;
  }

  #foodTable tbody tr:hover {
    background-color: #444;
  }

  ul {
    list-style-type: none;
    margin-top: 20px;
    padding: 0;
  }

  li {
    margin-bottom: 5px;
  }

  span {
    font-weight: bold;
  }

  #totalWater {
    font-weight: bold;
    font-size: 1.2rem;
  }
  </style>
</head>
<body>

    <body>
        <nav>
          <ul>
            <li><a href="#fd-body">Calorie Counter</a></li>
            <li><a href="#wt-body">Water Tracker</a></li>
            <li><a href="#bmi-body">BMI Calculator</a></li>
            <li><a href="#rc-body">Food Recommendations</a></li>
          </ul>
        </nav>
      


    <div id="fd-body" class="fd-body">
          <div class="card">
    <h2>Food Calorie Counter</h2>
    <label for="food">Food:</label>
    <input type="text" id="food">
    <label for="calories">Calories:</label>
    <input type="number" id="calories">
    <button onclick="addFood()">Add Food</button>
    <table id="foodTable">
      <thead>
        <tr>
          <th>Food</th>
          <th>Calories</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>
  </div>
    </div>

    <div id="wt-body" class="wt-body">
          <div class="card">
    <h2>Water Drinking Tracker</h2>
    <label for="water">Water (in ml):</label>
    <input type="number" id="water">
    <button onclick="addWater()">Add Water</button>
    <p>Total Water Intake: <span id="totalWater">0</span> ml</p>
  </div>
    </div>

    <div id="bmi-body" class="bmi-body">
          <div class="card">
    <h2>BMI Calculator</h2>
    <label for="height">Height (in cm):</label>
    <input type="number" id="height">
    <label for="weight">Weight (in kg):</label>
    <input type="number" id="weight">
    <button onclick="calculateBMI()">Calculate BMI</button>
    <p>Your BMI: <span id="bmi">0</span></p>
  </div>
    </div>

    <div id="rc-body" class="rc-body">
          <div class="card">
    <h2>Food Recommendation</h2>
    <label for="calorieInput">Enter the number of calories you want:</label>
    <input type="number" id="calorieInput">
    <button onclick="getRecommendedFoods()">Get Recommended Foods</button>
    <ul id="foodList">
    </ul>
  </div>
    </div>


  <script>
    // Food Calorie Counter
    const foodTable = document.getElementById('foodTable');
    const foodInput = document.getElementById('food');
    const caloriesInput = document.getElementById('calories');
    let foodList = [];

    function addFood() {
      const food = foodInput.value;
      const calories = parseInt(caloriesInput.value);
      if (food && calories) {
        foodList.push({ food, calories });
        renderFoodList();
        foodInput.value = '';
        caloriesInput.value = '';
      }
    }

    function renderFoodList() {
      const tbody = foodTable.querySelector('tbody');
      tbody.innerHTML = '';
      foodList.forEach((item) => {
        const row = `
          <tr>
            <td>${item.food}</td>
            <td>${item.calories}</td>
          </tr>
        `;
        tbody.insertAdjacentHTML('beforeend', row);
      });
    }

    // Water Drinking Tracker
    const waterInput = document.getElementById('water');
    const totalWaterElement = document.getElementById('totalWater');
    let totalWater = 0;

    function addWater() {
      const water = parseInt(waterInput.value);
      if (water) {
        totalWater += water;
        totalWaterElement.textContent = totalWater;
        waterInput.value = '';
      }
    }

    // BMI Calculator
    const heightInput = document.getElementById('height');
    const weightInput = document.getElementById('weight');
    const bmiElement = document.getElementById('bmi');

    function calculateBMI() {
      const height = parseInt(heightInput.value) / 100;
      const weight = parseInt(weightInput.value);
      if (height && weight) {
        const bmi = (weight / (height * height)).toFixed(1);
        bmiElement.textContent = bmi;
      }
    }

    // Food Recommendation
    const calorieInputElement = document.getElementById('calorieInput');
    const foodListElement = document.getElementById('foodList');
    const foods = [
      { name: 'Broccoli', calories: 34 },
      { name: 'Carrots', calories: 41 },
      { name: 'Spinach', calories: 23 },
      { name: 'Kale', calories: 49 },
      { name: 'Salmon', calories: 206 },
      { name: 'Chicken Breast', calories: 165 },
      { name: 'Eggs', calories: 78 },
      { name: 'Quinoa', calories: 120 },
      { name: 'Brown Rice', calories: 111 },
      { name: 'Sweet Potato', calories: 86 },
    ];

    function getRecommendedFoods() {
      const calorieInput = parseInt(calorieInputElement.value);
      if (calorieInput) {
        const recommendedFoods = foods.filter((food) => {
            return food.calories <= calorieInput;
    });

    let foodItems = '';
    recommendedFoods.forEach((food) => {
      foodItems += `<li>${food.name}</li>`;
    });

    if (foodItems) {
      foodListElement.innerHTML = foodItems;
    } else {
      foodListElement.innerHTML = '<li>No recommended foods found</li>';
    }
  }
}
</script>
</body>
</html>
