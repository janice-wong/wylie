document.addEventListener("DOMContentLoaded", function(event) { 
  Vue.component('v-select', VueSelect.VueSelect);
  var app = new Vue({
    el: '#app',
    data: {
      drugs: [],
      options: [],
      drugSearch: '',
      searchComplete: false,
      message: 'Hello Vue!'
    },
    mounted: function() {
      $.get('/api/v1/drugs', function(response) {
        this.drugs = response;
        for (var i = 0; i < response.length; i++) {
          this.options.push(response[i].name);
        }
      }.bind(this));
    },
    methods: {
      search: function(event) {
        if (this.drugSearch.length > 0) {
          $.get('/api/v1/search', {search: this.drugSearch}, function(response) {
            // console.log('response');
            // console.log(response);
            document.getElementById("searchError").innerHTML = '';
            this.drugs = response;
            this.searchComplete = true;
            // console.log('drugs');
            // console.log(this.drugs);
          }.bind(this));
        } else {
          document.getElementById("searchError").innerHTML = 'Please enter a drug.';
        }
      },
      reset: function() {
        this.drugSearch = '';
        this.drugs = [];
        this.searchComplete = false;
      }
    },
    computed: {
      Drugs: function() {
        if (this.searchComplete) {
          return this.drugs;
        } else {
          return [];
        }
      }
    }
  });
});
