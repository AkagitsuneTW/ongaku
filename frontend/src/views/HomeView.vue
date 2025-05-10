<script setup lang="ts">
import { ref } from 'vue'
import { Button } from 'primevue'

import axios from 'axios'

const message = ref('')

const getMessage: () => Promise<void> = async () => {
  const response = await axios.post('http://localhost:8080/api/hello')
  message.value = response.data
}
</script>

<template>
  <main>
    <h1 class="text-center text-3xl">音樂</h1>
    <Button @click="getMessage" label="取得資料" />
    <p>{{ message }}</p>
  </main>
</template>
