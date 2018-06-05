function pintarBotonPaypal(){
    paypal.Button.render({
          env: 'sandbox', // Or 'sandbox',

            client: {
                sandbox:    'ATl2gDDUYLN-gtIWmcWXwBEdb03xCr-3pQcl8FDRxMxbSqI4zOm0vgQuSN77d65Hz-kRYELHzB9U_QoF',
                production: 'xxxxxxxxx'
            },


          commit: true, // Show a 'Pay Now' button

          style: {
            color: 'gold',
            size: 'small'
          },

          payment: function(data, actions) {
              console.log('reenvio a la pagina de paypal')
              return actions.payment.create({
                    payment: {
                        transactions: [
                            {
                                amount: JSON.parse (sessionStorage.getItem('amount')),

                                description: "Pago en teknomarket,componentes de oredenador.",
                                custom: "Teknomarket",
                                "item_list": {
                                    "items": JSON.parse(sessionStorage.getItem('items')),
                                    "shipping_address": {
                                      "recipient_name": "Brian Robinson",
                                      "line1": "4th Floor",
                                      "line2": "Unit #34",
                                      "city": "San Jose",
                                      "country_code": "US",
                                      "postal_code": "95131",
                                      "phone": "011862212345678",
                                      "state": "CA"
                                    }
                                }
                            }
                        ]
                    }
                });
          },

          onAuthorize: function(data, actions) {
                return actions.payment.execute().then(function(payment) {
                    console.log('pago realizado')
                    // The payment is complete!
                    // You can now show a confirmation message to the customer
                });
          },

          onCancel: function(data, actions) {
              console.log('pago cancelado')
            /* 
             * Buyer cancelled the payment 
             */
          },

          onError: function(err) {
              console.log('error en el pago')
            /* 
             * An error occurred during the transaction 
             */
          }
        }, '#paypal-button');
}
pintarBotonPaypal();