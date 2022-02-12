<template>
  <div>
    <table>
      <tbody>
        <tr>
          <th>御名前</th>
          <th>御活躍</th>
          <th>享年</th>
        </tr>
        <tr v-for="e in posts" :key="e.id">
          <td>{{ e.title }}</td>
          <td>{{ e.content }}</td>
          <td>{{ e.last_day }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      posts: []
    }
  },
  mounted () {
    axios
      .get('/static_pages/top.json')
      .then(response => (this.top = response.data))
  }
}
</script>

<style lang="scss" scoped>
.t-body {
  box-shadow: 0 0 7px #faf61d;
  border: solid 1px #faf61d7c;
  }

p {
  color: #fff;
  font-size: 1em;
  text-align: center;
  font-family: 'New Tegomin', serif;
  background-color: rgba(5, 5, 5, 0.89);
}
</style>
