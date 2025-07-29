document.addEventListener('turbo:load', function(){
  const priceInput = document.getElementById('item-price');

  if (priceInput) {
    priceInput.addEventListener('input', () => {
      const price = parseInt(priceInput.value);

      if (!isNaN(price) && price >= 300 && price <= 9999999) {
        const commission = Math.floor(price * 0.1);
        const profit = price - commission;

        document.getElementById('add-tax-price').textContent = commission;
        document.getElementById('profit').textContent = profit;
      } else {
        document.getElementById('add-tax-price').textContent = 0;
        document.getElementById('profit').textContent = 0;
      }
    });
  }
});