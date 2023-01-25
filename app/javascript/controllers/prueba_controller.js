import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prueba"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!")
  }
}
