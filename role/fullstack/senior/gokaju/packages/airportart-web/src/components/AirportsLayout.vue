<template>
  <div class="layout">
    <div class="container">
      <slot />
    </div>
  </div>
</template>

<style scoped>
.layout {
  height: 100%;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: white;
}
.container {
  min-width: 240px;
  display: flex;
  flex-direction: column;
}

@media screen and (min-width: 240px) {
  .container {
    margin: 50px 20px;
    width: calc(100% - 40px);
    height: calc(100% - 100px);
  }
}

@media screen and (min-width: 481px) {
  .container {
    margin: 120px 60px;
    width: calc(100% - 120px);
    height: calc(100% - 240px);
  }
}

@media screen and (min-width: 721px) {
  .container {
    margin: 200px 90px;
    width: calc(100% - 180px);
    height: calc(100% - 400px);
  }
}

@media screen and (min-width: 1280px) {
  .container {
    max-width: 1280px;
    margin: 200px 90px;
    width: calc(100% - 180px);
    height: calc(100% - 400px);
  }
  .layout {
    width: fit-content;
  }
}
</style>
