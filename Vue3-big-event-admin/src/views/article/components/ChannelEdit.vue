<script setup>
import { ref } from 'vue';
import { artAddChannelService, artEditChannelService } from '../../../api/article';
const dialogVisible = ref(false)
const formRef = ref();

const emit = defineEmits(['success'])
const onSubmit = async () => {
  await formRef.value.validate()
  formModel.value.id
    ? await artEditChannelService(formModel.value)
    : await artAddChannelService(formModel.value)
  ElMessage({
    type: 'success',
    message: formModel.value.id ? '编辑成功' : '添加成功'
  })
  dialogVisible.value = false
  emit('success')
}

const open = async (row) => {
  dialogVisible.value = true
  console.log(row)
  formModel.value = { ...row }
}
defineExpose({
  open
})

const formModel = ref({
  cate_name: '',
  cate_alias: ''
})
const rules = {
  cate_name: [
    { required: true, message: '请输入分类名称', trigger: 'blur' },
    {
      pattern: /^\S{1,10}$/,
      message: '分类名必须是1-10位的非空字符',
      trigger: 'blur'
    }
  ],
  cate_alias: [
    { required: true, message: '请输入分类别名', trigger: 'blur' },
    {
      pattern: /^[a-zA-Z0-9]{1,15}$/,
      message: '分类别名必须是1-15位的字母数字',
      trigger: 'blur'
    }
  ]
}
</script>
<template>
    <el-dialog v-model="dialogVisible" :title="formModel.id ? '编辑分类' : '添加分类'" width="30%">
    <div>
        <el-form
            :model="formModel"
            :rules="rules"
            label-width="100px"
            style="padding-right: 30px"
            ref="formRef"
            >
            <el-form-item label="分类名称" prop="cate_name">
                <el-input
                v-model="formModel.cate_name"
                minlength="1"
                maxlength="10"
                ></el-input>

            </el-form-item>

            <el-form-item label="分类别名" prop="cate_alias">
                <el-input
                v-model="formModel.cate_alias"
                minlength="1"
                maxlength="15"
                ></el-input>

            </el-form-item>

        </el-form>

    </div>

    <template #footer>
        <span class="dialog-footer">
        <el-button @click="dialogVisible = false">取消</el-button>

        <el-button type="primary" @click="onSubmit"> 确认 </el-button>

        </span>

    </template>

    </el-dialog>
</template>