import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="show-address"
export default class extends Controller {

    static targets = ['zipcode', 'street','complement', 'district', 'city', 'state', 'ibge_code']

    connect() {



    }

    async addressData(event) {

        const element = event.currentTarget;
        const id = element.id;

        const response = await fetch(`/address/${id}`);
        const data = await response.json();

        this.zipcodeTarget.innerHTML = data['zipcode'];
        this.streetTarget.innerHTML = data['street'];
        this.complementTarget.innerHTML = data['complement'];
        this.districtTarget.innerHTML = data['district'];
        this.cityTarget.innerHTML = data['city'];
        this.stateTarget.innerHTML = data['state'];
        this.ibge_codeTarget.innerHTML = data['ibge_code'];

    }
}



