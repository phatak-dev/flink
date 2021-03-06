#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

angular.module('flinkApp')

.service 'JobManagerConfigService', ($http, flinkConfig, $q) ->
  config = {}

  @loadConfig = ->
    deferred = $q.defer()

    $http.get("jobmanager/config")
    .success (data, status, headers, config) ->
      config = data
      deferred.resolve(data)

    deferred.promise

  @

.service 'JobManagerLogsService', ($http, flinkConfig, $q) ->
  logs = {}

  @loadLogs = ->
    deferred = $q.defer()

    $http.get("jobmanager/log")
    .success (data, status, headers, config) ->
      logs = data
      deferred.resolve(data)

    deferred.promise

  @

.service 'JobManagerStdoutService', ($http, flinkConfig, $q) ->
  stdout = {}

  @loadStdout = ->
    deferred = $q.defer()

    $http.get("jobmanager/stdout")
    .success (data, status, headers, config) ->
      stdout = data
      deferred.resolve(data)

    deferred.promise

  @
