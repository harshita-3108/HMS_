const stripe = Stripe("pk_test_51LAzNOSEEMCLGkkUb3OkdpV5rJBz7hODnDaOBsCyASquDuBeQFY4iIY4oDcJkXpdQVmbDLgMSk4AahUlJFoivG1g00nyW8Gbgq")
const btn = document.querySelector('#btn')
btn.addEventListener('click', ()=>{
    fetch('http://localhost:8080/paymentSection/checkout.php',{
        method:"POST",
        headers:{
            'Content-Type' : 'application/json',
        },
        body: JSON.stringify({})
    }).then(res=> res.json())
    .then(payload => {
        stripe.redirectToCheckout({sessionId: payload.id})
    })
})