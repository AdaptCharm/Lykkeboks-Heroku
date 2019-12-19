
<template>
<div class="container mt-5">
    <div class="loading" v-if="loading">Loading&#8230;</div>
    <div class="row">
        <div class="col-md-5 m-auto">
            <button @click="spin" class="btn btn-primary-turquoise btn-sm btn-block" :class="isClicked">Spin</button>
            <div id="spinContent" class="mx-auto">
                <div id="wheelSpinHolder" class="wheelSpinHolder fitImg">
                    <div class="wheelSpinList"></div>
                    <div class="wheelSpinSelect">
                        <img src="/arrow.svg" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="card card--has-table">

                <div class="card__header">
                    <h4>Nylig vunnet</h4>
                </div>

                <div class="card__content">
                    <div class="table-responsive" style="overflow: auto; max-height: 25em;" id="wonedProducts">
                        <table class="table table-hover team-schedule">
                            <thead>
                                <tr>
                                    <th class="box-details__date">Dato</th>
                                    <th class="box-details__name">Navn</th>
                                    <th class="box-details__price">Pris</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="product in wonedProducts" :id="' wonedProduct ' + product.product_id">
                                    <td class="box-details__date"></td>
                                    <td class="box-details__name">
                                        <div class="team-meta">
                                            <figure class="team-meta__logo">
                                                <img :src="product.image_path" :alt="product.name">
                                            </figure>
                                            <div class="team-meta__info">
                                                <h6 class="team-meta__name">{{ product.name }}</h6>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="box-details__price">{{ product.sell_back_price / 100 }}</td>
                                    <td class="box-details__action">
                                        <a href="/profile#items" class="btn btn-xs btn-success btn-block">Bestill</a>
                                    </td>
                                    <td class="box-details__action">
                                        <button @click="sellBack(product.product_id)" class="btn btn-xs btn-warning btn-block">Sell</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</template>


<script>
const axios = require('axios');
import { mapState } from 'vuex';
export default {
  data: function () {
      return {
          clicked: false,
          loading: true,
          result: null,
          boxProducts: []
      }
  },
  computed: {
      ...mapState(['wonedProducts']),
      isClicked: function () {
          if(this.clicked === true) {
              return 'd-none';
          } else {
              return '';
          }
      }
  },
  methods: {
      spin: function () {
          var self = this;
          self.loading = true;
          if(self.clicked == false) {
              self.clicked = true;
              axios.post('./spin', {
                      boxID: $("#boxID").val()
                  })
                  .then(function (response) {
                      if(response.data.status === true) {
                          self.loading = false;
                          self.result = response.data.data.result.index;
                          $(".info-block__cart-sum.total-balance").html('$' + response.data.data.balance);
                          $('#wheelSpinHolder').wheelSpinAnimation('spin');
                          setTimeout(function () {
                              $('#wheelSpinHolder').wheelSpinAnimation('result', self.result);
                          }, 3000);
                      } else {
                          self.clicked = false;
                          self.loading = false;
                          Swal.fire('Opps!', response.data.message, 'error');
                      }
                  })
                  .catch(function (error) {
                      self.loading = false;
                      self.clicked = false;
                      Swal.fire('Opps!', error, 'error');
                  });
          }
      },
      sellBack: function (productID) {
          var self = this;
          self.loading = true;
          axios.post('./sellBack', {
                  productID: productID
              })
              .then(function (response) {
                  if(response.data.status === true) {
                      self.loading = false;
                      $(".info-block__cart-sum.total-balance").html('$' + response.data.data.balance);
                      $("#wonedProduct" + productID).remove();
                  } else {
                      self.loading = false;
                      Swal.fire('Opps!', response.data.message, 'error');
                  }
              })
              .catch(function (error) {
                  console.log(error);
              });
      },
      wineSpinCallback: function (data) {
          switch (data.status) {
          case 'spinstop':
              this.$store.commit('pushWonedProduct', this.boxProducts[this.result]);
              this.result = null;
              this.clicked = false;
              break;
          default:
          }
      }
  },
  mounted: function () {
      var self = this;
      axios.post('./initiate', {
              boxID: $("#boxID")
                  .val()
          })
          .then(function (response) {
              self.boxProducts = response.data.data.boxProducts;
              self.$store.commit('setWonedProducts', response.data.data.wonedProducts);
              $('#wheelSpinHolder').wheelSpinAnimation('destroy');
              $('#wheelSpinHolder, #wheelSpinMoreHolder').hide();
              $('#wheelSpinHolder').show();
              $('#wheelSpinHolder').wheelSpinAnimation({
                      width: 333,
                      height: 167,
                      prizes: response.data.data.spinnerItems,
                      callback: self.wineSpinCallback
                  });
              self.loading = false;
          })
          .catch(function (error) {
              self.loading = false;
              console.log(error);
          });
  }
}
</script>
