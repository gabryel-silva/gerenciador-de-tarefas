import { btn, menu, dropdownOpen } from "./menuMobile.js";
import { modalEntrar, btnEntrar } from "./modal.js";

btn.addEventListener('click', () => {
    menu(dropdownOpen)
})

btnEntrar.addEventListener('click', () => {
    modalEntrar()
})