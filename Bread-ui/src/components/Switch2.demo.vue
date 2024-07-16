<demo>支持disabled</demo>
<template>
<Switch v-model:value="bool" disabled/>
</template>

<script  lang="ts">
import Switch from '../lib/Switch.vue';
import {ref} from 'vue';
import Button from '../lib/Button.vue';
export default {
  components:{Button, Switch},
  setup() {
      const bool =ref(false);
      return {bool};
  },
}
</script>
