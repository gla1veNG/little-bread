<template>
  <button class="bread-switch" @click="toggle" :class="{'bread-checked':value}"><span></span></button>
</template>

<script lang="ts">

export default {
  props: {
    value: Boolean,
  },
  setup(props, context) {
    const toggle = () => {
      context.emit('update:value', !props.value);
    };
    return {toggle};
  }
};
</script>

<style lang="scss">
@use "sass:math";

$h: 22px;
$h2: $h - 4px;
.bread-switch {
  height: $h;
  width: $h*2;
  border: none;
  background: #bfbfbf;
  border-radius: math.div($h, 2);
  position: relative;
  > span {
    position: absolute;
    top: 2px;
    left: 2px;
    height: $h2;
    width: $h2;
    background: white;
    border-radius: math.div($h, 2);
    transition: all 0.5s;
  }

  &.bread-checked{
    background: #3cc53c;

    > span {
      left: calc(100% - #{$h2} - 2px);
    }
  }

  &:active {
    > span {
      width: $h2+4px;
    }
  }

  &.bread-checked:active {
    > span {
      width: $h2+4px;
      margin-left: -4px;
    }
  }
}


</style>