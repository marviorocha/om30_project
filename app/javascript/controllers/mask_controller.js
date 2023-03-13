import {Controller} from "@hotwired/stimulus"
import Cleave from 'cleave.js'
import 'cleave-phone.js';

// Connects to data-controller="mask"
export default class extends Controller {

    static targets = ['date_field']

    connect() {
        this.get_date()
        this.get_cpf()
        this.get_phone()
        this.get_cep()
    }

    get_cpf() {
        const cleave = new Cleave('#citizen_cpf', {
            delimiters: ['.', '.', '-'],
            blocks: [3, 3, 3, 2]
        });
    }

    get_cep() {
        const cleave = new Cleave('#citizen_address_attributes_zipcode', {
            delimiters: ['-'],
            blocks: [5, 3]
        });
    }

    get_phone() {
        const cleave = new Cleave('#citizen_phone', {
            phone: true,
            delimiters: ['.', '.', '-'],
            phoneRegionCode: 'BR'
        });

    }

    get_date() {
        const cleave = new Cleave('#citizen_date_of_birth', {
            date: true,
            delimiter: '/',
            datePattern: ['d', 'm', 'Y']
        });

    }


}
