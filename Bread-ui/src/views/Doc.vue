<template>
  <div class="layout">
    <Topnav :toggleMenuButtonVisible="true" class="nav"/>
    <div class="content">
      <aside v-if="asideVisible">
        <h2>文档</h2>
        <ol>
          <li>
            <router-link to="/doc/intro">介绍</router-link>
          </li>
          <li>
            <router-link to="/doc/install">安装</router-link>
          </li>
          <li>
            <router-link to="/doc/get-started">开始使用</router-link>
          </li>
        </ol>
        <h2>组件列表</h2>
        <ol>
          <li>
            <router-link to="/doc/switch">Switch组件</router-link>
          </li>
          <li>
            <router-link to="/doc/button">Button组件</router-link>
          </li>
          <li>
            <router-link to="/doc/dialog">Dialog组件</router-link>
          </li>
          <li>
            <router-link to="/doc/tabs">Tabs组件</router-link>
          </li>
        </ol>
      </aside>
      <main>
        <router-view/>
      </main>
    </div>
  </div>
</template>

<script lang="ts">
import Topnav from '../components/Topnav.vue';
import {inject, Ref} from 'vue';

export default {
  components: {Topnav},
  setup() {
    const asideVisible = inject<Ref<boolean>>('asideVisible');
    return {asideVisible};
  },
};
</script>

<style lang="scss">
$aside-index: 10;
.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;

  > .nav {
    flex-shrink: 0;
  }

  > .content {
    flex-grow: 1;
    padding-top: 60px;
    padding-left: 156px;
    @media (max-width: 500px) {
      padding: 0;
      aside {
        width: 120px;
        box-shadow: rgba(0, 0, 0, 0.1) -14px -14px 14px 14px;
        > h2 {
          margin-top: 16px;
        }
      }
    }
  }
}

.content {
  display: flex;

  > aside {
    flex-shrink: 0;
  }

  > main {
    flex-grow: 1;
    padding: 16px;
    background: white;
  }
}

aside {
  background: white;
  width: 150px;
  padding-top:80px;
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  z-index: $aside-index;

  > h2 {
    margin-bottom: 10px;
    padding: 0 10px;
  }

  > ol {
    > li {
      > a {
        display: block;
        padding: 10px 16px;
        text-decoration: none !important;

      }
      .router-link-active {
        background: #f4e1ff;
        margin-left: 1px;
        border-left: plum 4px solid;
      }
    }
  }
  >ol{
    >li{
      >a:hover{
        color: #9d34e0;
      }
    }
  }
}

main {
  overflow: auto;
}
</style>