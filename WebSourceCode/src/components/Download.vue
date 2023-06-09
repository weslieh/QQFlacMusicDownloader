<script lang="ts" setup></script>

<template>
            <div>
                <p v-for="fileName in fileList">{{fileName}}</p>
            </div>
        </template>
        
        <script>
            import Vue from 'vue';
            import fs from 'fs';
            
            export default {
                data() {
                    return {
                        fileList: []
                    }
                },
                created() {
                    const self = this;
                    fs.readdir('/workspace/music', function (err, files) {
                        if (err) {
                            console.log(err);
                        } else {
                            self.fileList = files;
                        }
                    });
                }
            }
        </script>
<style lang="scss" scoped>
.content {
  height: 100%;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
</style>
