#!/system/bin/sh
# Copyright (c) 2009-2010, Code Aurora Forum. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Code Aurora nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

#target=`getprop ro.product.device`
#case "$target" in
#    "GT-S5830" | "GT-S5670" | "GT-S5570" | "GT-B7510" | "GT-I5510" | "GT-I5500" | "msm7201a_ffa" | "msm7201a_surf" | "msm7627_ffa" | "msm7627_surf" | "qsd8250_surf" | "qsd8250_ffa" | "msm7630_surf" | "qsd8650a_st1x")
#	echo "conservative" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#        echo 95 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/up_threshold
#        echo 25 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/down_threshold
#        echo 200000 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/sampling_rate
#        echo 20 > /sys/devices/system/cpu/cpu0/cpufreq/conservative/freq_step
#        echo 245760 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
#        ;;
#esac

target=`getprop ro.product.device`
case "$target" in
    "GT-B7510L" | "GT-B7510B" |"GT-S5570L" | "GT-S5570B" | "GT-S5670L" | "GT-S5670B" | "GT-S5830L" | "GT-S5830B" | "GT-S5830" | "GT-S5670" | "GT-S5570" | "GT-B7510" | "GT-I5510" | "GT-I5500")
        echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
        echo 95 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
        echo 3 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/down_differential
        echo 50000 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
        echo 245760 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
        ;;
esac
