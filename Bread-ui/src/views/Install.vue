<template>
  <article class="markdown-body" v-html="md"></article>
  <div>install</div>
</template>
<script>
import md from '../markdown/install.md'
export default {
  data(){
    return{md}
  }
}
</script>

<style scoped lang="scss">

</style>