const btn = document.getElementById('btnMenu')
const dropdownOpen = document.querySelector('.d-disabled')

let menu = (dropdownOpen) => {
    dropdownOpen.classList.toggle('dropdown')
}

export {btn, menu, dropdownOpen}