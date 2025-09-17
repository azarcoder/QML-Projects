import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function fetchWeather() {
        var xhr = new XMLHttpRequest();
        var city = "Bangalore";
        var apiKey = "fb15749c2c978996208551fb57414469"; // Replace with your OpenWeatherMap API Key
        var url = "http://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + apiKey + "&units=metric";

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    var response = JSON.parse(xhr.responseText);
                    weatherText.text = "City: " + response.name + "\n" +
                            "Temp: " + response.main.temp + " °C\n" +
                            "Weather: " + response.weather[0].description;
                } else {
                    weatherText.text = "Error fetching weather!";
                }
            }
        }

        xhr.open("GET", url);
        xhr.send();
    }

    Column {
        anchors.centerIn: parent
        spacing: 10

        Text {
            id: weatherText
            text: "Fetching weather..."
        }

        Button {
            text: "Get Weather"
            onClicked: {
                fetchWeather()
            }
        }
    }
}
