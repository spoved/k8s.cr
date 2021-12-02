# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "../macros.cr"

annotation ::K8S::GroupVersionKind; end
annotation ::K8S::Action; end

require "./v1.9/kubernetes"
require "./v1.9/api/admissionregistration/v1alpha1/initializer.cr"
require "./v1.9/api/admissionregistration/v1alpha1/initializer_configuration.cr"
require "./v1.9/api/admissionregistration/v1alpha1/initializer_configuration_list.cr"
require "./v1.9/api/admissionregistration/v1alpha1/rule.cr"
require "./v1.9/api/admissionregistration/v1beta1/mutating_webhook_configuration.cr"
require "./v1.9/api/admissionregistration/v1beta1/mutating_webhook_configuration_list.cr"
require "./v1.9/api/admissionregistration/v1beta1/rule_with_operations.cr"
require "./v1.9/api/admissionregistration/v1beta1/service_reference.cr"
require "./v1.9/api/admissionregistration/v1beta1/validating_webhook_configuration.cr"
require "./v1.9/api/admissionregistration/v1beta1/validating_webhook_configuration_list.cr"
require "./v1.9/api/admissionregistration/v1beta1/webhook.cr"
require "./v1.9/api/admissionregistration/v1beta1/webhook_client_config.cr"
require "./v1.9/api/apps/v1/controller_revision.cr"
require "./v1.9/api/apps/v1/controller_revision_list.cr"
require "./v1.9/api/apps/v1/daemon_set.cr"
require "./v1.9/api/apps/v1/daemon_set_condition.cr"
require "./v1.9/api/apps/v1/daemon_set_list.cr"
require "./v1.9/api/apps/v1/daemon_set_spec.cr"
require "./v1.9/api/apps/v1/daemon_set_status.cr"
require "./v1.9/api/apps/v1/daemon_set_update_strategy.cr"
require "./v1.9/api/apps/v1/deployment.cr"
require "./v1.9/api/apps/v1/deployment_condition.cr"
require "./v1.9/api/apps/v1/deployment_list.cr"
require "./v1.9/api/apps/v1/deployment_spec.cr"
require "./v1.9/api/apps/v1/deployment_status.cr"
require "./v1.9/api/apps/v1/deployment_strategy.cr"
require "./v1.9/api/apps/v1/replica_set.cr"
require "./v1.9/api/apps/v1/replica_set_condition.cr"
require "./v1.9/api/apps/v1/replica_set_list.cr"
require "./v1.9/api/apps/v1/replica_set_spec.cr"
require "./v1.9/api/apps/v1/replica_set_status.cr"
require "./v1.9/api/apps/v1/rolling_update_daemon_set.cr"
require "./v1.9/api/apps/v1/rolling_update_deployment.cr"
require "./v1.9/api/apps/v1/rolling_update_stateful_set_strategy.cr"
require "./v1.9/api/apps/v1/stateful_set.cr"
require "./v1.9/api/apps/v1/stateful_set_condition.cr"
require "./v1.9/api/apps/v1/stateful_set_list.cr"
require "./v1.9/api/apps/v1/stateful_set_spec.cr"
require "./v1.9/api/apps/v1/stateful_set_status.cr"
require "./v1.9/api/apps/v1/stateful_set_update_strategy.cr"
require "./v1.9/api/apps/v1beta1/controller_revision.cr"
require "./v1.9/api/apps/v1beta1/controller_revision_list.cr"
require "./v1.9/api/apps/v1beta1/deployment.cr"
require "./v1.9/api/apps/v1beta1/deployment_condition.cr"
require "./v1.9/api/apps/v1beta1/deployment_list.cr"
require "./v1.9/api/apps/v1beta1/deployment_rollback.cr"
require "./v1.9/api/apps/v1beta1/deployment_spec.cr"
require "./v1.9/api/apps/v1beta1/deployment_status.cr"
require "./v1.9/api/apps/v1beta1/deployment_strategy.cr"
require "./v1.9/api/apps/v1beta1/rollback_config.cr"
require "./v1.9/api/apps/v1beta1/rolling_update_deployment.cr"
require "./v1.9/api/apps/v1beta1/rolling_update_stateful_set_strategy.cr"
require "./v1.9/api/apps/v1beta1/scale.cr"
require "./v1.9/api/apps/v1beta1/scale_spec.cr"
require "./v1.9/api/apps/v1beta1/scale_status.cr"
require "./v1.9/api/apps/v1beta1/stateful_set.cr"
require "./v1.9/api/apps/v1beta1/stateful_set_condition.cr"
require "./v1.9/api/apps/v1beta1/stateful_set_list.cr"
require "./v1.9/api/apps/v1beta1/stateful_set_spec.cr"
require "./v1.9/api/apps/v1beta1/stateful_set_status.cr"
require "./v1.9/api/apps/v1beta1/stateful_set_update_strategy.cr"
require "./v1.9/api/apps/v1beta2/controller_revision.cr"
require "./v1.9/api/apps/v1beta2/controller_revision_list.cr"
require "./v1.9/api/apps/v1beta2/daemon_set.cr"
require "./v1.9/api/apps/v1beta2/daemon_set_condition.cr"
require "./v1.9/api/apps/v1beta2/daemon_set_list.cr"
require "./v1.9/api/apps/v1beta2/daemon_set_spec.cr"
require "./v1.9/api/apps/v1beta2/daemon_set_status.cr"
require "./v1.9/api/apps/v1beta2/daemon_set_update_strategy.cr"
require "./v1.9/api/apps/v1beta2/deployment.cr"
require "./v1.9/api/apps/v1beta2/deployment_condition.cr"
require "./v1.9/api/apps/v1beta2/deployment_list.cr"
require "./v1.9/api/apps/v1beta2/deployment_spec.cr"
require "./v1.9/api/apps/v1beta2/deployment_status.cr"
require "./v1.9/api/apps/v1beta2/deployment_strategy.cr"
require "./v1.9/api/apps/v1beta2/replica_set.cr"
require "./v1.9/api/apps/v1beta2/replica_set_condition.cr"
require "./v1.9/api/apps/v1beta2/replica_set_list.cr"
require "./v1.9/api/apps/v1beta2/replica_set_spec.cr"
require "./v1.9/api/apps/v1beta2/replica_set_status.cr"
require "./v1.9/api/apps/v1beta2/rolling_update_daemon_set.cr"
require "./v1.9/api/apps/v1beta2/rolling_update_deployment.cr"
require "./v1.9/api/apps/v1beta2/rolling_update_stateful_set_strategy.cr"
require "./v1.9/api/apps/v1beta2/scale.cr"
require "./v1.9/api/apps/v1beta2/scale_spec.cr"
require "./v1.9/api/apps/v1beta2/scale_status.cr"
require "./v1.9/api/apps/v1beta2/stateful_set.cr"
require "./v1.9/api/apps/v1beta2/stateful_set_condition.cr"
require "./v1.9/api/apps/v1beta2/stateful_set_list.cr"
require "./v1.9/api/apps/v1beta2/stateful_set_spec.cr"
require "./v1.9/api/apps/v1beta2/stateful_set_status.cr"
require "./v1.9/api/apps/v1beta2/stateful_set_update_strategy.cr"
require "./v1.9/api/authentication/v1/token_review.cr"
require "./v1.9/api/authentication/v1/token_review_spec.cr"
require "./v1.9/api/authentication/v1/token_review_status.cr"
require "./v1.9/api/authentication/v1/user_info.cr"
require "./v1.9/api/authentication/v1beta1/token_review.cr"
require "./v1.9/api/authentication/v1beta1/token_review_spec.cr"
require "./v1.9/api/authentication/v1beta1/token_review_status.cr"
require "./v1.9/api/authentication/v1beta1/user_info.cr"
require "./v1.9/api/authorization/v1/local_subject_access_review.cr"
require "./v1.9/api/authorization/v1/non_resource_attributes.cr"
require "./v1.9/api/authorization/v1/non_resource_rule.cr"
require "./v1.9/api/authorization/v1/resource_attributes.cr"
require "./v1.9/api/authorization/v1/resource_rule.cr"
require "./v1.9/api/authorization/v1/self_subject_access_review.cr"
require "./v1.9/api/authorization/v1/self_subject_access_review_spec.cr"
require "./v1.9/api/authorization/v1/self_subject_rules_review.cr"
require "./v1.9/api/authorization/v1/self_subject_rules_review_spec.cr"
require "./v1.9/api/authorization/v1/subject_access_review.cr"
require "./v1.9/api/authorization/v1/subject_access_review_spec.cr"
require "./v1.9/api/authorization/v1/subject_access_review_status.cr"
require "./v1.9/api/authorization/v1/subject_rules_review_status.cr"
require "./v1.9/api/authorization/v1beta1/local_subject_access_review.cr"
require "./v1.9/api/authorization/v1beta1/non_resource_attributes.cr"
require "./v1.9/api/authorization/v1beta1/non_resource_rule.cr"
require "./v1.9/api/authorization/v1beta1/resource_attributes.cr"
require "./v1.9/api/authorization/v1beta1/resource_rule.cr"
require "./v1.9/api/authorization/v1beta1/self_subject_access_review.cr"
require "./v1.9/api/authorization/v1beta1/self_subject_access_review_spec.cr"
require "./v1.9/api/authorization/v1beta1/self_subject_rules_review.cr"
require "./v1.9/api/authorization/v1beta1/self_subject_rules_review_spec.cr"
require "./v1.9/api/authorization/v1beta1/subject_access_review.cr"
require "./v1.9/api/authorization/v1beta1/subject_access_review_spec.cr"
require "./v1.9/api/authorization/v1beta1/subject_access_review_status.cr"
require "./v1.9/api/authorization/v1beta1/subject_rules_review_status.cr"
require "./v1.9/api/autoscaling/v1/cross_version_object_reference.cr"
require "./v1.9/api/autoscaling/v1/horizontal_pod_autoscaler.cr"
require "./v1.9/api/autoscaling/v1/horizontal_pod_autoscaler_list.cr"
require "./v1.9/api/autoscaling/v1/horizontal_pod_autoscaler_spec.cr"
require "./v1.9/api/autoscaling/v1/horizontal_pod_autoscaler_status.cr"
require "./v1.9/api/autoscaling/v1/scale.cr"
require "./v1.9/api/autoscaling/v1/scale_spec.cr"
require "./v1.9/api/autoscaling/v1/scale_status.cr"
require "./v1.9/api/autoscaling/v2beta1/cross_version_object_reference.cr"
require "./v1.9/api/autoscaling/v2beta1/horizontal_pod_autoscaler.cr"
require "./v1.9/api/autoscaling/v2beta1/horizontal_pod_autoscaler_condition.cr"
require "./v1.9/api/autoscaling/v2beta1/horizontal_pod_autoscaler_list.cr"
require "./v1.9/api/autoscaling/v2beta1/horizontal_pod_autoscaler_spec.cr"
require "./v1.9/api/autoscaling/v2beta1/horizontal_pod_autoscaler_status.cr"
require "./v1.9/api/autoscaling/v2beta1/metric_spec.cr"
require "./v1.9/api/autoscaling/v2beta1/metric_status.cr"
require "./v1.9/api/autoscaling/v2beta1/object_metric_source.cr"
require "./v1.9/api/autoscaling/v2beta1/object_metric_status.cr"
require "./v1.9/api/autoscaling/v2beta1/pods_metric_source.cr"
require "./v1.9/api/autoscaling/v2beta1/pods_metric_status.cr"
require "./v1.9/api/autoscaling/v2beta1/resource_metric_source.cr"
require "./v1.9/api/autoscaling/v2beta1/resource_metric_status.cr"
require "./v1.9/api/batch/v1/job.cr"
require "./v1.9/api/batch/v1/job_condition.cr"
require "./v1.9/api/batch/v1/job_list.cr"
require "./v1.9/api/batch/v1/job_spec.cr"
require "./v1.9/api/batch/v1/job_status.cr"
require "./v1.9/api/batch/v1beta1/cron_job.cr"
require "./v1.9/api/batch/v1beta1/cron_job_list.cr"
require "./v1.9/api/batch/v1beta1/cron_job_spec.cr"
require "./v1.9/api/batch/v1beta1/cron_job_status.cr"
require "./v1.9/api/batch/v1beta1/job_template_spec.cr"
require "./v1.9/api/batch/v2alpha1/cron_job.cr"
require "./v1.9/api/batch/v2alpha1/cron_job_list.cr"
require "./v1.9/api/batch/v2alpha1/cron_job_spec.cr"
require "./v1.9/api/batch/v2alpha1/cron_job_status.cr"
require "./v1.9/api/batch/v2alpha1/job_template_spec.cr"
require "./v1.9/api/certificates/v1beta1/certificate_signing_request.cr"
require "./v1.9/api/certificates/v1beta1/certificate_signing_request_condition.cr"
require "./v1.9/api/certificates/v1beta1/certificate_signing_request_list.cr"
require "./v1.9/api/certificates/v1beta1/certificate_signing_request_spec.cr"
require "./v1.9/api/certificates/v1beta1/certificate_signing_request_status.cr"
require "./v1.9/api/core/v1/aws_elastic_block_store_volume_source.cr"
require "./v1.9/api/core/v1/affinity.cr"
require "./v1.9/api/core/v1/attached_volume.cr"
require "./v1.9/api/core/v1/azure_disk_volume_source.cr"
require "./v1.9/api/core/v1/azure_file_persistent_volume_source.cr"
require "./v1.9/api/core/v1/azure_file_volume_source.cr"
require "./v1.9/api/core/v1/binding.cr"
require "./v1.9/api/core/v1/csi_persistent_volume_source.cr"
require "./v1.9/api/core/v1/capabilities.cr"
require "./v1.9/api/core/v1/ceph_fs_persistent_volume_source.cr"
require "./v1.9/api/core/v1/ceph_fs_volume_source.cr"
require "./v1.9/api/core/v1/cinder_volume_source.cr"
require "./v1.9/api/core/v1/client_ip_config.cr"
require "./v1.9/api/core/v1/component_condition.cr"
require "./v1.9/api/core/v1/component_status.cr"
require "./v1.9/api/core/v1/component_status_list.cr"
require "./v1.9/api/core/v1/config_map.cr"
require "./v1.9/api/core/v1/config_map_env_source.cr"
require "./v1.9/api/core/v1/config_map_key_selector.cr"
require "./v1.9/api/core/v1/config_map_list.cr"
require "./v1.9/api/core/v1/config_map_projection.cr"
require "./v1.9/api/core/v1/config_map_volume_source.cr"
require "./v1.9/api/core/v1/container.cr"
require "./v1.9/api/core/v1/container_image.cr"
require "./v1.9/api/core/v1/container_port.cr"
require "./v1.9/api/core/v1/container_state.cr"
require "./v1.9/api/core/v1/container_state_running.cr"
require "./v1.9/api/core/v1/container_state_terminated.cr"
require "./v1.9/api/core/v1/container_state_waiting.cr"
require "./v1.9/api/core/v1/container_status.cr"
require "./v1.9/api/core/v1/daemon_endpoint.cr"
require "./v1.9/api/core/v1/downward_api_projection.cr"
require "./v1.9/api/core/v1/downward_api_volume_file.cr"
require "./v1.9/api/core/v1/downward_api_volume_source.cr"
require "./v1.9/api/core/v1/empty_dir_volume_source.cr"
require "./v1.9/api/core/v1/endpoint_address.cr"
require "./v1.9/api/core/v1/endpoint_port.cr"
require "./v1.9/api/core/v1/endpoint_subset.cr"
require "./v1.9/api/core/v1/endpoints.cr"
require "./v1.9/api/core/v1/endpoints_list.cr"
require "./v1.9/api/core/v1/env_from_source.cr"
require "./v1.9/api/core/v1/env_var.cr"
require "./v1.9/api/core/v1/env_var_source.cr"
require "./v1.9/api/core/v1/event.cr"
require "./v1.9/api/core/v1/event_list.cr"
require "./v1.9/api/core/v1/event_series.cr"
require "./v1.9/api/core/v1/event_source.cr"
require "./v1.9/api/core/v1/exec_action.cr"
require "./v1.9/api/core/v1/fc_volume_source.cr"
require "./v1.9/api/core/v1/flex_volume_source.cr"
require "./v1.9/api/core/v1/flocker_volume_source.cr"
require "./v1.9/api/core/v1/gce_persistent_disk_volume_source.cr"
require "./v1.9/api/core/v1/git_repo_volume_source.cr"
require "./v1.9/api/core/v1/glusterfs_volume_source.cr"
require "./v1.9/api/core/v1/http_get_action.cr"
require "./v1.9/api/core/v1/http_header.cr"
require "./v1.9/api/core/v1/handler.cr"
require "./v1.9/api/core/v1/host_alias.cr"
require "./v1.9/api/core/v1/host_path_volume_source.cr"
require "./v1.9/api/core/v1/iscsi_persistent_volume_source.cr"
require "./v1.9/api/core/v1/iscsi_volume_source.cr"
require "./v1.9/api/core/v1/key_to_path.cr"
require "./v1.9/api/core/v1/lifecycle.cr"
require "./v1.9/api/core/v1/limit_range.cr"
require "./v1.9/api/core/v1/limit_range_item.cr"
require "./v1.9/api/core/v1/limit_range_list.cr"
require "./v1.9/api/core/v1/limit_range_spec.cr"
require "./v1.9/api/core/v1/load_balancer_ingress.cr"
require "./v1.9/api/core/v1/load_balancer_status.cr"
require "./v1.9/api/core/v1/local_object_reference.cr"
require "./v1.9/api/core/v1/local_volume_source.cr"
require "./v1.9/api/core/v1/nfs_volume_source.cr"
require "./v1.9/api/core/v1/namespace.cr"
require "./v1.9/api/core/v1/namespace_list.cr"
require "./v1.9/api/core/v1/namespace_spec.cr"
require "./v1.9/api/core/v1/namespace_status.cr"
require "./v1.9/api/core/v1/node.cr"
require "./v1.9/api/core/v1/node_address.cr"
require "./v1.9/api/core/v1/node_affinity.cr"
require "./v1.9/api/core/v1/node_condition.cr"
require "./v1.9/api/core/v1/node_config_source.cr"
require "./v1.9/api/core/v1/node_daemon_endpoints.cr"
require "./v1.9/api/core/v1/node_list.cr"
require "./v1.9/api/core/v1/node_selector.cr"
require "./v1.9/api/core/v1/node_selector_requirement.cr"
require "./v1.9/api/core/v1/node_selector_term.cr"
require "./v1.9/api/core/v1/node_spec.cr"
require "./v1.9/api/core/v1/node_status.cr"
require "./v1.9/api/core/v1/node_system_info.cr"
require "./v1.9/api/core/v1/object_field_selector.cr"
require "./v1.9/api/core/v1/object_reference.cr"
require "./v1.9/api/core/v1/persistent_volume.cr"
require "./v1.9/api/core/v1/persistent_volume_claim.cr"
require "./v1.9/api/core/v1/persistent_volume_claim_condition.cr"
require "./v1.9/api/core/v1/persistent_volume_claim_list.cr"
require "./v1.9/api/core/v1/persistent_volume_claim_spec.cr"
require "./v1.9/api/core/v1/persistent_volume_claim_status.cr"
require "./v1.9/api/core/v1/persistent_volume_claim_volume_source.cr"
require "./v1.9/api/core/v1/persistent_volume_list.cr"
require "./v1.9/api/core/v1/persistent_volume_spec.cr"
require "./v1.9/api/core/v1/persistent_volume_status.cr"
require "./v1.9/api/core/v1/photon_persistent_disk_volume_source.cr"
require "./v1.9/api/core/v1/pod.cr"
require "./v1.9/api/core/v1/pod_affinity.cr"
require "./v1.9/api/core/v1/pod_affinity_term.cr"
require "./v1.9/api/core/v1/pod_anti_affinity.cr"
require "./v1.9/api/core/v1/pod_condition.cr"
require "./v1.9/api/core/v1/pod_dns_config.cr"
require "./v1.9/api/core/v1/pod_dns_config_option.cr"
require "./v1.9/api/core/v1/pod_list.cr"
require "./v1.9/api/core/v1/pod_security_context.cr"
require "./v1.9/api/core/v1/pod_spec.cr"
require "./v1.9/api/core/v1/pod_status.cr"
require "./v1.9/api/core/v1/pod_template.cr"
require "./v1.9/api/core/v1/pod_template_list.cr"
require "./v1.9/api/core/v1/pod_template_spec.cr"
require "./v1.9/api/core/v1/portworx_volume_source.cr"
require "./v1.9/api/core/v1/preferred_scheduling_term.cr"
require "./v1.9/api/core/v1/probe.cr"
require "./v1.9/api/core/v1/projected_volume_source.cr"
require "./v1.9/api/core/v1/quobyte_volume_source.cr"
require "./v1.9/api/core/v1/rbd_persistent_volume_source.cr"
require "./v1.9/api/core/v1/rbd_volume_source.cr"
require "./v1.9/api/core/v1/replication_controller.cr"
require "./v1.9/api/core/v1/replication_controller_condition.cr"
require "./v1.9/api/core/v1/replication_controller_list.cr"
require "./v1.9/api/core/v1/replication_controller_spec.cr"
require "./v1.9/api/core/v1/replication_controller_status.cr"
require "./v1.9/api/core/v1/resource_field_selector.cr"
require "./v1.9/api/core/v1/resource_quota.cr"
require "./v1.9/api/core/v1/resource_quota_list.cr"
require "./v1.9/api/core/v1/resource_quota_spec.cr"
require "./v1.9/api/core/v1/resource_quota_status.cr"
require "./v1.9/api/core/v1/resource_requirements.cr"
require "./v1.9/api/core/v1/se_linux_options.cr"
require "./v1.9/api/core/v1/scale_io_persistent_volume_source.cr"
require "./v1.9/api/core/v1/scale_io_volume_source.cr"
require "./v1.9/api/core/v1/secret.cr"
require "./v1.9/api/core/v1/secret_env_source.cr"
require "./v1.9/api/core/v1/secret_key_selector.cr"
require "./v1.9/api/core/v1/secret_list.cr"
require "./v1.9/api/core/v1/secret_projection.cr"
require "./v1.9/api/core/v1/secret_reference.cr"
require "./v1.9/api/core/v1/secret_volume_source.cr"
require "./v1.9/api/core/v1/security_context.cr"
require "./v1.9/api/core/v1/service.cr"
require "./v1.9/api/core/v1/service_account.cr"
require "./v1.9/api/core/v1/service_account_list.cr"
require "./v1.9/api/core/v1/service_list.cr"
require "./v1.9/api/core/v1/service_port.cr"
require "./v1.9/api/core/v1/service_spec.cr"
require "./v1.9/api/core/v1/service_status.cr"
require "./v1.9/api/core/v1/session_affinity_config.cr"
require "./v1.9/api/core/v1/storage_os_persistent_volume_source.cr"
require "./v1.9/api/core/v1/storage_os_volume_source.cr"
require "./v1.9/api/core/v1/tcp_socket_action.cr"
require "./v1.9/api/core/v1/taint.cr"
require "./v1.9/api/core/v1/toleration.cr"
require "./v1.9/api/core/v1/volume.cr"
require "./v1.9/api/core/v1/volume_device.cr"
require "./v1.9/api/core/v1/volume_mount.cr"
require "./v1.9/api/core/v1/volume_projection.cr"
require "./v1.9/api/core/v1/vsphere_virtual_disk_volume_source.cr"
require "./v1.9/api/core/v1/weighted_pod_affinity_term.cr"
require "./v1.9/api/events/v1beta1/event.cr"
require "./v1.9/api/events/v1beta1/event_list.cr"
require "./v1.9/api/events/v1beta1/event_series.cr"
require "./v1.9/api/extensions/v1beta1/allowed_flex_volume.cr"
require "./v1.9/api/extensions/v1beta1/allowed_host_path.cr"
require "./v1.9/api/extensions/v1beta1/daemon_set.cr"
require "./v1.9/api/extensions/v1beta1/daemon_set_condition.cr"
require "./v1.9/api/extensions/v1beta1/daemon_set_list.cr"
require "./v1.9/api/extensions/v1beta1/daemon_set_spec.cr"
require "./v1.9/api/extensions/v1beta1/daemon_set_status.cr"
require "./v1.9/api/extensions/v1beta1/daemon_set_update_strategy.cr"
require "./v1.9/api/extensions/v1beta1/deployment.cr"
require "./v1.9/api/extensions/v1beta1/deployment_condition.cr"
require "./v1.9/api/extensions/v1beta1/deployment_list.cr"
require "./v1.9/api/extensions/v1beta1/deployment_rollback.cr"
require "./v1.9/api/extensions/v1beta1/deployment_spec.cr"
require "./v1.9/api/extensions/v1beta1/deployment_status.cr"
require "./v1.9/api/extensions/v1beta1/deployment_strategy.cr"
require "./v1.9/api/extensions/v1beta1/fs_group_strategy_options.cr"
require "./v1.9/api/extensions/v1beta1/http_ingress_path.cr"
require "./v1.9/api/extensions/v1beta1/http_ingress_rule_value.cr"
require "./v1.9/api/extensions/v1beta1/host_port_range.cr"
require "./v1.9/api/extensions/v1beta1/id_range.cr"
require "./v1.9/api/extensions/v1beta1/ip_block.cr"
require "./v1.9/api/extensions/v1beta1/ingress.cr"
require "./v1.9/api/extensions/v1beta1/ingress_backend.cr"
require "./v1.9/api/extensions/v1beta1/ingress_list.cr"
require "./v1.9/api/extensions/v1beta1/ingress_rule.cr"
require "./v1.9/api/extensions/v1beta1/ingress_spec.cr"
require "./v1.9/api/extensions/v1beta1/ingress_status.cr"
require "./v1.9/api/extensions/v1beta1/ingress_tls.cr"
require "./v1.9/api/extensions/v1beta1/network_policy.cr"
require "./v1.9/api/extensions/v1beta1/network_policy_egress_rule.cr"
require "./v1.9/api/extensions/v1beta1/network_policy_ingress_rule.cr"
require "./v1.9/api/extensions/v1beta1/network_policy_list.cr"
require "./v1.9/api/extensions/v1beta1/network_policy_peer.cr"
require "./v1.9/api/extensions/v1beta1/network_policy_port.cr"
require "./v1.9/api/extensions/v1beta1/network_policy_spec.cr"
require "./v1.9/api/extensions/v1beta1/pod_security_policy.cr"
require "./v1.9/api/extensions/v1beta1/pod_security_policy_list.cr"
require "./v1.9/api/extensions/v1beta1/pod_security_policy_spec.cr"
require "./v1.9/api/extensions/v1beta1/replica_set.cr"
require "./v1.9/api/extensions/v1beta1/replica_set_condition.cr"
require "./v1.9/api/extensions/v1beta1/replica_set_list.cr"
require "./v1.9/api/extensions/v1beta1/replica_set_spec.cr"
require "./v1.9/api/extensions/v1beta1/replica_set_status.cr"
require "./v1.9/api/extensions/v1beta1/rollback_config.cr"
require "./v1.9/api/extensions/v1beta1/rolling_update_daemon_set.cr"
require "./v1.9/api/extensions/v1beta1/rolling_update_deployment.cr"
require "./v1.9/api/extensions/v1beta1/run_as_user_strategy_options.cr"
require "./v1.9/api/extensions/v1beta1/se_linux_strategy_options.cr"
require "./v1.9/api/extensions/v1beta1/scale.cr"
require "./v1.9/api/extensions/v1beta1/scale_spec.cr"
require "./v1.9/api/extensions/v1beta1/scale_status.cr"
require "./v1.9/api/extensions/v1beta1/supplemental_groups_strategy_options.cr"
require "./v1.9/api/networking/v1/ip_block.cr"
require "./v1.9/api/networking/v1/network_policy.cr"
require "./v1.9/api/networking/v1/network_policy_egress_rule.cr"
require "./v1.9/api/networking/v1/network_policy_ingress_rule.cr"
require "./v1.9/api/networking/v1/network_policy_list.cr"
require "./v1.9/api/networking/v1/network_policy_peer.cr"
require "./v1.9/api/networking/v1/network_policy_port.cr"
require "./v1.9/api/networking/v1/network_policy_spec.cr"
require "./v1.9/api/policy/v1beta1/eviction.cr"
require "./v1.9/api/policy/v1beta1/pod_disruption_budget.cr"
require "./v1.9/api/policy/v1beta1/pod_disruption_budget_list.cr"
require "./v1.9/api/policy/v1beta1/pod_disruption_budget_spec.cr"
require "./v1.9/api/policy/v1beta1/pod_disruption_budget_status.cr"
require "./v1.9/api/rbac/v1/aggregation_rule.cr"
require "./v1.9/api/rbac/v1/cluster_role.cr"
require "./v1.9/api/rbac/v1/cluster_role_binding.cr"
require "./v1.9/api/rbac/v1/cluster_role_binding_list.cr"
require "./v1.9/api/rbac/v1/cluster_role_list.cr"
require "./v1.9/api/rbac/v1/policy_rule.cr"
require "./v1.9/api/rbac/v1/role.cr"
require "./v1.9/api/rbac/v1/role_binding.cr"
require "./v1.9/api/rbac/v1/role_binding_list.cr"
require "./v1.9/api/rbac/v1/role_list.cr"
require "./v1.9/api/rbac/v1/role_ref.cr"
require "./v1.9/api/rbac/v1/subject.cr"
require "./v1.9/api/rbac/v1alpha1/aggregation_rule.cr"
require "./v1.9/api/rbac/v1alpha1/cluster_role.cr"
require "./v1.9/api/rbac/v1alpha1/cluster_role_binding.cr"
require "./v1.9/api/rbac/v1alpha1/cluster_role_binding_list.cr"
require "./v1.9/api/rbac/v1alpha1/cluster_role_list.cr"
require "./v1.9/api/rbac/v1alpha1/policy_rule.cr"
require "./v1.9/api/rbac/v1alpha1/role.cr"
require "./v1.9/api/rbac/v1alpha1/role_binding.cr"
require "./v1.9/api/rbac/v1alpha1/role_binding_list.cr"
require "./v1.9/api/rbac/v1alpha1/role_list.cr"
require "./v1.9/api/rbac/v1alpha1/role_ref.cr"
require "./v1.9/api/rbac/v1alpha1/subject.cr"
require "./v1.9/api/rbac/v1beta1/aggregation_rule.cr"
require "./v1.9/api/rbac/v1beta1/cluster_role.cr"
require "./v1.9/api/rbac/v1beta1/cluster_role_binding.cr"
require "./v1.9/api/rbac/v1beta1/cluster_role_binding_list.cr"
require "./v1.9/api/rbac/v1beta1/cluster_role_list.cr"
require "./v1.9/api/rbac/v1beta1/policy_rule.cr"
require "./v1.9/api/rbac/v1beta1/role.cr"
require "./v1.9/api/rbac/v1beta1/role_binding.cr"
require "./v1.9/api/rbac/v1beta1/role_binding_list.cr"
require "./v1.9/api/rbac/v1beta1/role_list.cr"
require "./v1.9/api/rbac/v1beta1/role_ref.cr"
require "./v1.9/api/rbac/v1beta1/subject.cr"
require "./v1.9/api/scheduling/v1alpha1/priority_class.cr"
require "./v1.9/api/scheduling/v1alpha1/priority_class_list.cr"
require "./v1.9/api/settings/v1alpha1/pod_preset.cr"
require "./v1.9/api/settings/v1alpha1/pod_preset_list.cr"
require "./v1.9/api/settings/v1alpha1/pod_preset_spec.cr"
require "./v1.9/api/storage/v1/storage_class.cr"
require "./v1.9/api/storage/v1/storage_class_list.cr"
require "./v1.9/api/storage/v1alpha1/volume_attachment.cr"
require "./v1.9/api/storage/v1alpha1/volume_attachment_list.cr"
require "./v1.9/api/storage/v1alpha1/volume_attachment_source.cr"
require "./v1.9/api/storage/v1alpha1/volume_attachment_spec.cr"
require "./v1.9/api/storage/v1alpha1/volume_attachment_status.cr"
require "./v1.9/api/storage/v1alpha1/volume_error.cr"
require "./v1.9/api/storage/v1beta1/storage_class.cr"
require "./v1.9/api/storage/v1beta1/storage_class_list.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/custom_resource_definition.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/custom_resource_definition_condition.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/custom_resource_definition_list.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/custom_resource_definition_names.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/custom_resource_definition_spec.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/custom_resource_definition_status.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/custom_resource_validation.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/external_documentation.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/json.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/json_schema_props.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/json_schema_props_or_array.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/json_schema_props_or_bool.cr"
require "./v1.9/apiextensions_apiserver/apis/apiextensions/v1beta1/json_schema_props_or_string_array.cr"
require "./v1.9/apimachinery/apis/meta/v1/api_group.cr"
require "./v1.9/apimachinery/apis/meta/v1/api_group_list.cr"
require "./v1.9/apimachinery/apis/meta/v1/api_resource.cr"
require "./v1.9/apimachinery/apis/meta/v1/api_resource_list.cr"
require "./v1.9/apimachinery/apis/meta/v1/api_versions.cr"
require "./v1.9/apimachinery/apis/meta/v1/delete_options.cr"
require "./v1.9/apimachinery/apis/meta/v1/group_version_for_discovery.cr"
require "./v1.9/apimachinery/apis/meta/v1/initializer.cr"
require "./v1.9/apimachinery/apis/meta/v1/initializers.cr"
require "./v1.9/apimachinery/apis/meta/v1/label_selector.cr"
require "./v1.9/apimachinery/apis/meta/v1/label_selector_requirement.cr"
require "./v1.9/apimachinery/apis/meta/v1/list_meta.cr"
require "./v1.9/apimachinery/apis/meta/v1/object_meta.cr"
require "./v1.9/apimachinery/apis/meta/v1/owner_reference.cr"
require "./v1.9/apimachinery/apis/meta/v1/patch.cr"
require "./v1.9/apimachinery/apis/meta/v1/preconditions.cr"
require "./v1.9/apimachinery/apis/meta/v1/server_address_by_client_cidr.cr"
require "./v1.9/apimachinery/apis/meta/v1/status.cr"
require "./v1.9/apimachinery/apis/meta/v1/status_cause.cr"
require "./v1.9/apimachinery/apis/meta/v1/status_details.cr"
require "./v1.9/apimachinery/apis/meta/v1/watch_event.cr"
require "./v1.9/apimachinery/runtime/raw_extension.cr"
require "./v1.9/apimachinery/version/info.cr"
require "./v1.9/kube_aggregator/apis/apiregistration/v1beta1/api_service.cr"
require "./v1.9/kube_aggregator/apis/apiregistration/v1beta1/api_service_condition.cr"
require "./v1.9/kube_aggregator/apis/apiregistration/v1beta1/api_service_list.cr"
require "./v1.9/kube_aggregator/apis/apiregistration/v1beta1/api_service_spec.cr"
require "./v1.9/kube_aggregator/apis/apiregistration/v1beta1/api_service_status.cr"
require "./v1.9/kube_aggregator/apis/apiregistration/v1beta1/service_reference.cr"
require "./v1.9/api/core/v1/list.cr"
