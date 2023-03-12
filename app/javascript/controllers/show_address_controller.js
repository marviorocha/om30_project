import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-address"
export default class extends Controller {

    handleClick(event) {
        const element = event.currentTarget
        const id = element.id
        console.log(`Clicked element ID: ${id}`)
    }
}
