class FooController < ApplicationController

  def json_view
    @my_object = sample
    render json: @my_object
  end

  def index
    @my_object = sample
    @beautifiedJson = JSON.pretty_generate @my_object
    @my_object1 = @my_object
  end

  def sample
    {
      "batchId": "5241838-1597135476-21",
      "curLevel": "WARN",
      "dimensions": {
        "instanceId": "i-bp1e8mx2hk1o21svisc0",
        "userId": "1129709143764958"
      },
      "duration": 97154,
      "escalation": {
        "comparisonOperator": "GreaterThanOrEqualToThreshold",
        "statistics": "Average",
        "tag": "WARN",
        "threshold": "85"
      },
      "eventName": "AlertAlarm",
      "eventType": "Alert",
      "groupBy": "group",
      "groupId": "5613",
      "groupName": "运营_ECS",
      "instanceDetail": {
        "instanceId": "i-bp1e8mx2hk1o21svisc0",
        "instanceName": "hz-cmdb",
        "vpc": {
          "vswitchInstanceId": "vsw-bp1iollm8e6g1kv7ne81x",
          "vpcInstanceId": "vpc-bp15nhyv4nsbwm1gqe62k"
        },
        "aliUid": 1129709143764958,
        "category": "ECS",
        "region": {
          "regionId": "cn-hangzhou",
          "availabilityZone": "cn-hangzhou-e"
        },
        "networkType": "VPC",
        "dimension": {
        },
        "tags": [
          {
            "value": "i-bp1e8mx2hk1o21svisc0",
            "key": "instanceId"
          },
          {
            "value": "35223de1-f26a-4a7d-8a70-f2b25d6251f6",
            "key": "serialNumber"
          },
          {
            "value": "1129709143764958",
            "key": "aliUid"
          },
          {
            "value": "hz-cmdb",
            "key": "hostName"
          },
          {
            "value": "Linux",
            "key": "operatingSystem"
          },
          {
            "value": "cn-hangzhou",
            "key": "region"
          },
          {
            "value": "10.1.252.103",
            "key": "ipGroup"
          },
          {
            "value": "2.1.56",
            "key": "tianjimonVersion"
          },
          {
            "value": "true",
            "key": "aliyunHost"
          },
          {
            "value": "vpc",
            "key": "networkType"
          },
          {
            "value": "vpc-bp15nhyv4nsbwm1gqe62k",
            "key": "vpcInstanceId"
          },
          {
            "value": "cn-hangzhou-e",
            "key": "availabilityZone"
          },
          {
            "value": "vsw-bp1iollm8e6g1kv7ne81x",
            "key": "vswitchInstanceId"
          },
          {
            "value": "ecs.sn1ne",
            "key": "instanceTypeFamily"
          },
          {
            "value": "1",
            "key": "aegisStatus"
          }
        ]
      },
      "metricData": {
        "metricData": {
          "Maximum": 88.42,
          "Minimum": 88.11,
          "instanceId": "i-bp1e8mx2hk1o21svisc0",
          "Average": 88.2,
          "userId": "1129709143764958",
          "timestamp": 1597135380000
        }
      },
      "metricName": "memory_usedutilization",
      "namespace": "acs_ecs_dashboard",
      "period": "60",
      "preLevel": "WARN",
      "regionId": "cn-hangzhou",
      "ruleId": "applyTemplateGroup028bec76-5a8e-4c2d-97b2-ecd46652498b",
      "ruleName": "内存使用率",
      "s2SDispatch": false,
      "time": 1597135380000,
      "userId": "1129709143764958",
      "version": "1.0"
    }
  end
end
