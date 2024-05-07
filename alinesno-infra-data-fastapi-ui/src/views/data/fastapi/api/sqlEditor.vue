<template>

    <div>
        <el-form :model="form" :rules="rules" ref="executeRef" label-width="120px">
            <el-row>
               <el-col :span="24">
                  <el-form-item style="width: 100%;" label="数据库源" prop="datasourceId">
                     <el-tree-select
                        v-model="form.datasourceId"
                        :data="datasourceList"
                        :props="{ value: 'id', label: 'dbDesc'}"
                        value-key="id"
                        placeholder="请选择归属类型"
                        check-strictly
                     />
                  </el-form-item>
               </el-col>
            </el-row>

            <el-row>
               <el-col :span="24">
                  <el-form-item label="执行SQL" prop="runSql">
                     <el-input 
                        type="textarea" 
                        :autosize="{minRows:10,maxRows:20}"
                        v-model="form.runSql" 
                        placeholder="请输入指令名称" 
                        maxlength="500" />
                  </el-form-item>
               </el-col>
            </el-row>

            <el-form-item label="事务" prop="openTran">
                  <el-switch
                  v-model="form.openTran"
                  :active-value="true"
                  :inactive-value="false"
                  />
            </el-form-item>

         </el-form>
    </div>

</template>

<script setup name="SqlEditor">

import {
   allDatasource,
} from "@/api/data/fastapi/datasource";

import {
   updateExecuteSql
} from "@/api/data/fastapi/apiConfig";

const router = useRouter();
const { proxy } = getCurrentInstance();

const datasourceList = ref([]);

const props = defineProps({
  currentApiConfigContent: {
    type: Object ,
    require: true,
  },
})

const data = reactive({
   form: {
      name: '' , 
      path: '' ,
   },
   queryParams: {
      pageNum: 1,
      pageSize: 10,
      runSql: undefined,
      promptDesc: undefined,
      catalogId: undefined
   },
   rules: {
      runSql: [{ required: true, message: "名称不能为空", trigger: "blur" }] ,
      dataSourceApi: [{ required: true, message: "连接不能为空", trigger: "blur" }],
      contentType: [{ required: true, message: "类型不能为空", trigger: "blur" }] ,
      promptDesc: [{ required: true, message: "备注不能为空", trigger: "blur" }]
   }
});

const { queryParams, form, rules } = toRefs(data);

/** 获取到所有数据源 */
function handleAllDatasource() {
   allDatasource().then(res => {
      console.log('res = ' + res) ;
      datasourceList.value = res.data ;
   })
}

/** 提交按钮 */
function submitForm(id) {
   proxy.$refs["executeRef"].validate(valid => {
      if (valid) {
         updateExecuteSql(form.value , id).then(response => {
            proxy.$modal.msgSuccess("修改成功");
            open.value = false;
         });
      }
   });
};


handleAllDatasource() ;

/** 提供对外访问接口 */
defineExpose({
   submitForm 
})

</script>

<style scoped lang="scss">
</style>


