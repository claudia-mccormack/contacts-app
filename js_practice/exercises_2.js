setTimeout(function() {
  console.log("done!");
  setTimeout(function() {
    console.log("and done!");
    setTimeout(function() {
      console.log("and totally done!");
    }, 2000);
  }, 2000);
}, 2000);
