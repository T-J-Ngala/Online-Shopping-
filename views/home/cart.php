<?php
require_once('header.php');
?>

<div class="container">
  <div class="row">
    <div class="col-sm-6">
      <section id="product-section" class="product_section layout_padding">
        <div class="container">
          <div class="row">
            <?php foreach ($data as $key => $value) { ?>
              <div class="col-sm-4">
                <div class="box">
                  <div class="img-box">
                    <img class="product-image img-fluid" src="uploads/products/<?php echo $value['picture']; ?>" alt="">
                  </div>
                  <div class="product-id" style="display:none"><?php echo $value['id']; ?></div>
                  <div class="detail-box">
                    <h5 class="product-name">
                      <?php echo $value['name']; ?>
                    </h5>
                    <div class="product-info">
                      <h5>
                        <span class="product-price">$<?php echo $value['price']; ?></span>
                      </h5>
                      <div class="product-description">
                        <?php echo $value['description']; ?>
                      </div>
                    </div>
                  </div>
                  <style>
                  .product-name{
                    font-family: Times New Roman;
                    font-size:20px;
                  }
                  .product-price{
                    color:red;
                    font-family:Verdana;
                    font-size:16px;
                  }
                  .product-info{
                    font-family:Arial;
                    font-size:12px;
                  }
                  </style>
                  <button class="btn btn-success add_cart_btn">
                    Add To Cart
                  </button>
                </div>
              </div>
            <?php } ?>
          </div>
        </div>
      </section>
    </div>

    <div class="col-sm-6">
      <div class="cart">
        <h2 class="cart-title">CART</h2>
        <div class="cart-content"></div>
      </div>

      <div class="total">
        <div class="total-title">Total</div>
        <div class="total-price">$0</div>
      </div>

      <div class="text-center mt-4">
        <button type="button" id="buyButton" class="btn btn-primary btn-buy">Buy Now</button>
      </div>
    </div>
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  var cart = document.querySelector('.cart');
  var cartContent = document.querySelector('.cart-content');
  var totalPrice = document.querySelector('.total-price');
  var addCartButtons = document.getElementsByClassName('add_cart_btn');
  var buyButton = document.getElementById('buyButton');

  var cartItems = [];

  function addCartClicked(event) {
    var button = event.target;
    var product = button.closest('.box');
    var productName = product.querySelector('.product-name').innerText;
    var productPrice = product.querySelector('.product-price').innerText;
    var productImage = product.querySelector('.product-image').src;
    var productId = product.querySelector('.product-id').innerText;

    var cartItem = {
      id: productId,
      name: productName,
      price: productPrice,
      image: productImage,
      quantity: 1
    };

    if (!isItemInCart(productId)) {
      cartItems.push(cartItem);
      renderCartItem(cartItem);
    } else {
      alert('This item is already in the cart.');
    }

    updateTotal();
  }

  function renderCartItem(item) {
    var cartBox = document.createElement('div');
    cartBox.classList.add('cart-box');
    cartBox.innerHTML = `
      <div class="row">
        <div class="col-md-4">
          <img src="${item.image}" class="cart-img img-fluid" alt="Product Image">
        </div>
        <div class="col-md-8">
          <div class="product-cart-id" style="display:none">${item.id}</div>
          <div class="cart-product-title">${item.name}</div>
          <div class="cart-price">${item.price}</div>
          <input type="number" value="1" class="cart-quantity form-control">
        </div>
        <i class="btn btn-danger fa-solid fa-trash cart-remove"></i>
      </div>`;

    cartBox.querySelector('.cart-remove').addEventListener('click', removeCartItem);
    cartBox.querySelector('.cart-quantity').addEventListener('change', quantityChanged);

    cartContent.appendChild(cartBox);
  }

  function removeCartItem(event) {
    var button = event.target;
    var cartBox = button.closest('.cart-box');
    var productId = cartBox.querySelector('.product-cart-id').innerText;

    cartItems = cartItems.filter(function(item) {
      return item.id !== productId;
    });

    cartBox.remove();
    updateTotal();
  }

  function quantityChanged(event) {
    var input = event.target;
    var cartBox = input.closest('.cart-box');
    var productId = cartBox.querySelector('.product-cart-id').innerText;
    var quantity = parseInt(input.value);

    var item = getItemById(productId);
    if (item) {
      item.quantity = quantity;
      updateTotal();
    }
  }

  function isItemInCart(itemId) {
    return cartItems.some(function(item) {
      return item.id === itemId;
    });
  }

  function getItemById(itemId) {
    return cartItems.find(function(item) {
      return item.id === itemId;
    });
  }

  function updateTotal() {
    var total = cartItems.reduce(function(sum, item) {
      var price = parseFloat(item.price.replace('$', ''));
      return sum + price * item.quantity;
    }, 0);

    totalPrice.innerText = '$' + total.toFixed(2);
  }

  function postCart() {
    var url = '/buy';
    var data = JSON.stringify(cartItems);

    var id=0;

    fetch(url, {
      method: 'POST',
      body: data,
      headers: {
        'Content-Type': 'application/json'
      }
    })
    .then(function(response) {
      if (response.ok) {

        //console.log(response.data);
        return response.text();
        
      }
      throw new Error('Request failed with status code ' + response.status);
    })
    .then(function(responseText) {
      console.log('Request succeeded!');
      console.log(responseText);
      var responseObj = JSON.parse(responseText);
      id = responseObj.pre_order_id;
      console.log('Response id: ', id);
      window.location.href="order/"+id;
    })
    .catch(function(error) {
      console.error('Request failed:', error);
    });


    
  }

  for (var i = 0; i < addCartButtons.length; i++) {
    var addButton = addCartButtons[i];
    addButton.addEventListener('click', addCartClicked);
  }

  buyButton.addEventListener('click', postCart);
});
</script>

<?php
require_once('footer.php');
?>
