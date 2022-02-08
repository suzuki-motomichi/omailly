<template>
  <div id="app">
    <div>
      <Ranking />
    </div>
    <p>{{ message }}</p>
  </div>
</template>

<script>
import Ranking from "./components/Ranking";

const router = new VueRouter({
  routes: [
    { path: '/',
      component: Ranking  }
  ]
})

export default {
  components: {
    Ranking
  },
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
};
</script>

<style scoped>
html {
  background-color: rgba(5, 5, 5, 0.89);
}
p {
  font-size: 2em;
  text-align: center;
}
</style>
