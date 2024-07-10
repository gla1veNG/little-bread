<template>
  <h1>示例1</h1>
  <div>
    <Button>您好</Button>
    <Button theme="button">您好</Button>
    <Button theme="link">您好</Button>
    <Button theme="text">您好</Button>
  </div>
  <h1>示例2</h1>
  <div>
    <Button size="big">大大大</Button>
    <Button>普通普通</Button>
    <Button size="small">小小小</Button>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';

export default {
  components: {Button},
  setup() {
      const onClick = ()=>{
        console.log('您好');
      }
      return {onClick}
  },
};
</script>

<style lang="scss">

</style>