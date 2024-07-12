<template>
  <div>
    Dialog示例
  </div>
  <h1>示例1</h1>
  <div>
    <Button @click="toggle">toggle</Button>
    <Dialog v-model:visible="x" :closeOnClickOverlay="x" :ok="f1" :cancel="f2">
      <template v-slot:title>
        <strong>加粗的标题</strong>
      </template>
      <template v-slot:content>
        <strong>hi1</strong>
        <div>hi2</div>
      </template>
    </Dialog>
    <h2>示例2</h2>
    <Button @click="showDialog">show</Button>
  </div>
</template>

<script lang="ts">
import Dialog from '../lib/Dialog.vue';
import Button from '../lib/Button.vue';
import {openDialog} from '../lib/openDialog';
import {ref} from 'vue';

export default {
  components: {Button, Dialog},
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      return x;
    };
    const f2 = () => {
    };
    const showDialog = () => {
      openDialog({
        title: '标题', content: '你好', ok() {console.log('ok');},cancel() {console.log('cancel');}
      });
    };
    return {x, toggle, f1, f2, showDialog};
  },
};
</script>

<style scoped lang="scss">

</style>