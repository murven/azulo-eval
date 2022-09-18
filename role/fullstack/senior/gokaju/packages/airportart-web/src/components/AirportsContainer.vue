<template>
  <div class="airport-container">
    <slot />
  </div>
</template>

<style scoped>
.airport-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
  align-items: flex-start;
  overflow-y: auto;
}
</style>
