var categories = [];
var products = [];

const getAllCategories = async () => {
    fetch('http://localhost/My%20Website/le1nad-prog.github.io/projects/ADET/A06/A06_BE/categories.php')
        .then(response => response.json())
        .then(data => {
            categories = data;
            loadCategories();
        });
}

const getAllProducts = async (categoryID) => {
    const categoryData = {
        categoryID: categoryID
    };

    fetch('http://localhost/My%20Website/le1nad-prog.github.io/projects/ADET/A06/A06_BE/products.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(categoryData)
    })
        .then(response => response.json())
        .then(data => {
            products = data;
            loadProducts();
        });
}

getAllCategories();

var total = 0;

function loadCategories() {
    var categoriesContainer = document.getElementById("categories");

    categories.forEach((category) => {
        categoriesContainer.innerHTML += `
            <div onclick="getAllProducts('`+ category.categoryID + `')" class="card me-1 categoryButton p-3 text-center">
                <small>`+ category.categoryName + `</small>
            </div>
        `;
    });
}

function loadProducts(categoryID) {
    var maincontainer = document.getElementById("maincontainer");
    maincontainer.innerHTML = "";

    products.forEach(product => {
        maincontainer.innerHTML += `
            <div class="card productCard me-2 mb-2">
                <img src="assets/images/`+ product.productImage + `" class="productImage">
                <div class="row px-4 pt-2">
                    <span class="productName p-0">`+ product.productName + `</span>
                </div>
                <div class="row px-3 py-1">
                    <div class="col-6 d-flex align-items-end">
                        <span class="productPrice">₱ ` + product.productPrice + `</span>
                    </div>
                    <div class="col-6 d-flex justify-content-end align-items-end pe-2">
                        <button onclick="addToReceipt('` + product.productImage + `','` + product.productName + `', '` + product.productPrice + `')" class="addToCartButton btn btn-primary btn-sm"><i class="fa-solid fa-cart-plus"></i></button>
                    </div>
                </div>
            </div>
        `;
    });
}

function addToReceipt(image, name, price) {
    var receiptContainer = document.getElementById("receipt");
    var itemId = "item" + Date.now();
    var quantity = "quantity" + itemId;
    var itemTotal = parseFloat(price);

    total += itemTotal;
    document.getElementById("totalValue").innerHTML = total;

    receiptContainer.innerHTML += `
        <div class="card receiptCard p-3 mb-2 d-flex justify-content-center" id="`+ itemId + `">
            <div class="row">
                <div class="col-4">
                    <img src="assets/images/`+ image + `" class="receiptProductImage" alt="Product Receipt">
                </div>
                <div class="col-8">
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <h6 class="receiptProductName m-0">`+ name + `</h6>
                            </div>
                            <span class="receiptProductPrice">₱ `+ price + `</span>
                        </div>
                    </div>
                    <div class="row pt-1 align-items-center">
                        <div class="col-8">
                            <div class="d-flex align-items-center">
                                <div onclick="changeQuantity('decrease', '`+ quantity + `', '` + price + `')" class="decreaseQuantityButton text-center">-</div>
                                <span id="`+ quantity + `" class="mx-2">1</span>
                                <div onclick="changeQuantity('increase', '`+ quantity + `', '` + price + `')" class="increaseQuantityButton text-center">+</div>
                            </div>
                        </div>
                        <div class="col-4 text-end">
                            <div class="removeButton d-inline-flex justify-content-center align-items-center" onclick="removeFromReceipt('`+ itemId + `', ` + price + `, '` + quantity + `')">
                                <i class="fa-solid fa-trash" style="font-size: 12px;"></i>
                            </div>
                        </div>                                
                    </div>
                </div>
            </div>
        </div>
    `;
}

function changeQuantity(type, quantity, price) {
    var quantityElement = document.getElementById(quantity);
    var currentQuantity = parseInt(quantityElement.innerHTML);
    var newQuantity = currentQuantity;

    if (type === "increase") {
        newQuantity += 1;
        total += parseFloat(price);
    } else if (type === "decrease" && currentQuantity > 1) {
        newQuantity -= 1;
        total -= parseFloat(price);
    }

    quantityElement.innerHTML = newQuantity;
    document.getElementById("totalValue").innerHTML = total.toFixed();
}

function removeFromReceipt(id, price, quantity) {
    var item = document.getElementById(id);
    var quantity = parseInt(document.getElementById(quantity).innerHTML);

    total -= parseFloat(price) * quantity;
    document.getElementById("totalValue").innerHTML = total.toFixed();

    item.remove();
}