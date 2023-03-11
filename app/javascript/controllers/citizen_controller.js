import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="address"
export default class extends Controller {
  static targets = ['citizen']

  greet() {
    alert(this.element)
  }


}
