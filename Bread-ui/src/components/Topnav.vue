<template>
  <div class="topnav">
    <router-link to="/" class="logo">
      <svg class="icon"><use xlink:href="#icon-bread"></use></svg>
      <h3>Bread-ui</h3>
    </router-link>
    <ul class="menu">
      <li><router-link to="/doc">文档</router-link></li>
    </ul>
    <svg v-if="toggleMenuButtonVisible" class="toggleAside" @click="toggleMenu">
      <use xlink:href="#icon-Menu"></use>
    </svg>
  </div>
</template>
<script lang="ts">
import {inject, Ref} from 'vue';

export default {
  props:{
    toggleMenuButtonVisible:{
      type:Boolean,
      default:false
    },
  },
  setup() {
    const asideVisible = inject<Ref<boolean>>('asideVisible');
    const toggleMenu = () => {
      //@ts-ignore
      asideVisible.value = !asideVisible.value;
    };
    return {toggleMenu};
  },
};
</script>
<style lang="scss" scoped>
$color:#9d34e0;
.topnav {
  color: $color;
  display: flex;
  padding: 16px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 20;
  justify-content: center;
  align-items: center;
  box-shadow: rgba(0, 0, 0, 0.1) 0px -14px 14px 14px;
  > .logo {
    display: flex;
    max-width: 8em;
    margin-right:auto;
    flex-wrap: wrap;
    align-items: center;
    >svg{
      width: 32px;
      height: 32px;
      margin-right: 2px;
    }
  }
  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    > li {
      margin: 0 1em;
    }
  }
  > .toggleAside {
    width: 32px;
    height: 32px;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    display: none;
  }
  @media (max-width: 500px) {
    position: relative;
    box-shadow: none;
    > .menu {
      display: none;
    }
    > .logo {
      max-width: 6em;
      margin: 16px auto;
      >h3{
        margin: 0 auto;
      }
      >svg{
        margin: 0 auto;
      }
    }
    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>
