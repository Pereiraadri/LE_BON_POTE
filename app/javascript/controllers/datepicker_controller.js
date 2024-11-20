import { Controller } from "@hotwired/stimulus"
import flatpickr from "Flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element)
  }
}
