<script setup>
import { ref } from 'vue';
import { artDelChannelService, artGetChannelsService } from '../../api/article';
import {
  Delete,
  Edit,
} from '@element-plus/icons-vue'
import channelEdit from '@/views/article/components/ChannelEdit.vue'
const channelList = ref([
    {
      "id": 1070,
      "cate_name": "测试1",
      "cate_alias": "ceshi1"
    },
    {
      "id": 1071,
      "cate_name": "测试2",
      "cate_alias": "ceshi2"
    }
])
const loading = ref(false)
const dialog = ref()





const onSuccess = () => {
  getChannelList()
}
</script>

<template>
  <page-container title="文章分类">
    <template #extra>
      <el-button type="primary"> 添加分类 </el-button>

    </template>
    <el-table :data="channelList" style="width: 100%" v-loading="loading">
        <el-table-column label="序号" width="100" type="index"> </el-table-column>

        <el-table-column label="分类名称" prop="cate_name"></el-table-column>

        <el-table-column label="分类别名" prop="cate_alias"></el-table-column>

        <el-table-column label="操作" width="100">
          <template #default="{ row }">
            <el-button
              :icon="Edit"
              circle
              plain
              type="primary"
            ></el-button>

            <el-button
              :icon="Delete"
              circle
              plain
              type="danger"
            ></el-button>

          </template>

        </el-table-column>

        <template #empty>
          <el-empty description="没有数据" />
        </template>
      </el-table>
  </page-container>
  <!-- 弹窗 -->
   <channel-edit ref="dialog"  @success="onSuccess"></channel-edit>

</template>
  
  <style lang="scss" scoped>
  .page-container {
    min-height: 100%;
    box-sizing: border-box;
    .header {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
  }
  </style>
  