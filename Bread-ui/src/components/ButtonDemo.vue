<template>
  <div>
    <Button>您好</Button>
    <Button theme="button">您好</Button>
    <Button theme="link">您好</Button>
    <Button theme="text">您好</Button>
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

<style scoped lang="scss">

</style>