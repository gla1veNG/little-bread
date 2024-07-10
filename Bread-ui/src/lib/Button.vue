<template>
  <div>
    <button v-bind="$attrs">
      <slot/>
    </button>
  </div>
</template>

<script  lang="ts">
export default {
  inheritAttrs:false
}
</script>

<style scoped lang="scss">
div{
  border: 1px solid red;
}
</style>