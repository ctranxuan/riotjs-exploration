<hello-world>
  <h3>{opts.title}</h3>

  <input name="helloInput" placeholder="Enter your name">
  <button class="myButton" onclick="{ sayHello }">Say Hello</button>
  <h4>{message}</h4>

  <div if={ message }>
    The input is not empty: this div has been inserted...
  </div>
  <div show={ message }>
    The input is not empty: this div is now shown...
  </div>

  <script type='text/es6'>
    // <script> tag is required if we provide style too
    this.message = '';

    this.sayHello = (e) => {
      if (this.helloInput.value) {
        this.message = 'Hello ' + this.helloInput.value + '!';

      } else {
        this.message = '';

      }

    };
  </script>
  <style>
    .myButton {
      background-color:#44c767;
      -moz-border-radius:18px;
      -webkit-border-radius:18px;
      border-radius:18px;
      border:1px solid #18ab29;
      display:inline-block;
      cursor:pointer;
      color:#ffffff;
      font-family:Arial;
      font-size:17px;
      padding:6px 21px;
      text-decoration:none;
      text-shadow:0px 1px 0px #2f6627;
    }
    .myButton:hover {
      background-color:#5cbf2a;
    }
    .myButton:active:enabled {
      position:relative;
      top:1px;
      cursor: pointer;
    }
  </style>

</hello-world>
