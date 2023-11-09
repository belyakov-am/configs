function klog
	kubectl logs $argv[1] -n etlas --tail=200 --follow
end

