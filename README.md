# House-price-prediction-using-flask
This project demonstrates the predictive capabilities of a model trained on house price data using Linear Regression. The model is deployed using a Flask API, providing an interface to predict house prices based on input features.

For a detailed explanation, check out my blog post: [House Price Prediction using Flask for Beginners](https://techyscientists.blogspot.com/2021/07/house-price-prediction-using-flask.html)

## Installation

You'll need to install the required libraries to run this web app on your local machine. These are listed in the requirements.txt file. The project was developed using Python 3.8.0 and Flask 2.0.1.<br><br> Install the necessary packages by running the following command in your terminal:<br><br>

```
pip install -r requirement.txt
```
<br>
<br>

## SonarQube in Azure DevOps

The Azure Pipeline includes Python test coverage and SonarQube analysis. To enable it:

1. Create a SonarQube project with the key `house-rent-prediction`.
2. In Azure DevOps, create a SonarQube service connection named `SonarQube` under **Project settings > Service connections**.
3. Run the pipeline. It prepares the scan, runs the tests, uploads `coverage.xml` and `test-results/junit.xml`, and publishes the SonarQube quality gate.

The service connection name, project key, and project name are defined at the top of `azure-pipelines.yml`. Change those variables if your SonarQube project uses different values. The SonarQube extension for Azure DevOps must be installed in the organization before the pipeline can use the `SonarQubePrepare`, `SonarQubeAnalyze`, and `SonarQubePublish` tasks.

For a self-hosted SonarQube server, make sure the Azure DevOps agent can reach the server URL. For SonarCloud, use the SonarCloud Azure DevOps tasks and service connection instead of the SonarQube tasks.

## Getting Started

After installing the required packages, you can start the application by executing the following command in your terminal:<br><br>
```
python app.py
```
<br>
<br>

## Preview
<img src='https://github.com/JafirDon/House-price-prediction-using-flask/blob/main/static/images/form.png'></img>
<br>
<br>
<img src='https://github.com/JafirDon/House-price-prediction-using-flask/blob/main/static/images/prediction.png'></img>
<br>
<br>

## License
MIT License
<br>
<br>

### Thank you
