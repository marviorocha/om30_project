import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="show-address"
export default class extends Controller {

    static targets = ['zip', 'address', 'district', 'city', 'state', 'ibge_code']

    connect() {

        this.addressData()

    }

    async addressData(event) {

        const element = event.currentTarget;
        const id = element.id;

        const response = await fetch(`http://localhost:3000/address/${id}`);
        const data = await response.json();

        this.zipTarget.innerHTML = data['zip'];
        this.addressTarget.innerHTML = data['address'];
        this.districtTarget.innerHTML = data['district'];
        this.cityTarget.innerHTML = data['city'];
        this.stateTarget.innerHTML = data['state'];
        this.ibge_codeTarget.innerHTML = data['ibge_code'];

    }
}



