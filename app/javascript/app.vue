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
Vue.use(VueRouter)

export default {
  router
}
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
