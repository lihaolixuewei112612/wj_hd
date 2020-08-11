create table h_rating_result(
       id int comment '记录id（用于明细关联，最好有）,该表主键',
       company_name varchar comment '主体名称',
       credit_code varchar comment '统一社会信用码',
       model_code varchar comment '模型标识',
       score double comment '主体得分',
       pd double comment '违约概率',
       model_source varchar comment '模型来源（德勤/其他）',
       rating_time date comment '评级时间',
       data_year varchar comment '数据年份'
)
COMMENT '评级结果明细表'
CLUSTERED BY (id) INTO 2 BUCKETS
STORED AS ORC
TBLPROPERTIES ("transactional"="true");

create table h_factor_detail(
    id int comment '评级结果明细表h_rating_result的id',
    company_name varchar comment '主体名称',
    credit_code varchar comment '统一社会信用码',
    model_code varchar comment '模型标识',
    factor_code varchar comment '指标编号',
    factor_name varchar comment '指标名称',
    factor_value double comment '指标值',
    factor_score double comment '指标得分',
    factor_weight double comment '指标权重(0-1的小数形式）',
    factor_total_socre double comment '指标总分',
    model_source varchar comment '模型来源（德勤/其他）'
)
COMMENT '评级指标明细表'
CLUSTERED BY (id) INTO 2 BUCKETS
STORED AS ORC
TBLPROPERTIES ("transactional"="true");

create table h_entity_model_relation(
    company_name varchar comment '主体名称',
    credit_code varchar comment '统一社会信用码',
    model_code varchar comment '模型标识',
    model_name varchar comment '模型名称',
    model_source varchar comment '模型来源（德勤/其他）'
)
COMMENT '主体模型关联表'
CLUSTERED BY (company_name) INTO 2 BUCKETS
STORED AS ORC
TBLPROPERTIES ("transactional"="true");

create table dm_pty_rat(
    id int comment 'id',
    expo_name varcahr(30) comment '敞口名称'

)