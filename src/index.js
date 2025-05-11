import React from "react"
import ReactDOM from "react-dom/client"
import App from "./App"
import "./index.css"
import checkEnvironmentVariables from "./utils/envCheck"

// Проверка переменных окружения при запуске
checkEnvironmentVariables();

const root = ReactDOM.createRoot(document.getElementById("root"))
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)

