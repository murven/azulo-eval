<script setup lang="ts">
defineProps<{
  code: string;
  name: string;
  provinceOrState: string;
  country: string;
  airportOperator: string;
}>();
</script>

<template>
  <div class="card">
    <div class="title">{{ code }} - {{ name }}</div>
    <div class="content">{{ provinceOrState }}, {{ country }}</div>
    <div class="footer">{{ airportOperator }}</div>
  </div>
</template>

<style scoped>
.card {
  width: 160px;
  height: 80px;
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
  margin: 1em;
  padding: 1em;
}
.card:hover {
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
  cursor: pointer;
  transform: scale(1.05);
}
.title {
  font-size: 1em;
  font-weight: bold;
  color: #333;
  text-align: left;
}
.content {
  font-size: 1em;
  color: #666;
  text-align: left;
}

.footer {
  font-size: 0.8em;
  color: #666;
  display: flex;
  justify-content: flex-end;
  align-items: flex-end;
}
</style>
