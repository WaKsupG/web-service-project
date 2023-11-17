document.addEventListener("DOMContentLoaded", function() {
    const addToCartButtons = document.querySelectorAll(".add-to-cart");
    const cartItems = document.getElementById("cart-items");
    const cartTotal = document.getElementById("cart-total");

    let total = 0;

    addToCartButtons.forEach(button => {
        button.addEventListener("click", function() {
            const product = button.parentElement;
            const productName = product.querySelector("h2").textContent;
            const productPrice = parseFloat(product.querySelector("p").textContent.replace("$", ""));
            
            const cartItem = document.createElement("li");
            cartItem.textContent = `${productName} - $${productPrice.toFixed(2)}`;
            
            // Add a delete button for each cart item
            const deleteButton = document.createElement("button");
            deleteButton.textContent = "Delete";
            deleteButton.classList.add("delete-item");
            cartItem.appendChild(deleteButton);

            cartItems.appendChild(cartItem);

            total += productPrice;
            cartTotal.textContent = total.toFixed(2);

            // Add an event listener for the delete button
            deleteButton.addEventListener("click", function() {
                total -= productPrice;
                cartTotal.textContent = total.toFixed(2);

                cartItems.removeChild(cartItem);
            });
        });
    });
});