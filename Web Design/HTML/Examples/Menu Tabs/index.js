const menuItems = document.querySelectorAll(".nav-link");
const LEN = menuItems.length;

for (let i = 0; i < LEN; i++) {
  const menuItem = menuItems[i];

  menuItem.onclick = function() {
    for (let j = 0; j < LEN; j++) {
      menuItems[j].classList.remove("active");
    }

    menuItem.classList.add("active");
    console.log(menuItem.innerHTML);
  };
}
