<template>
  <div id="app">
    <div>
      <Ranking />
    </div>
    <div>
      <router-view/>
    </div>
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
  components: {
    Ranking
  }
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
