if [ $2 == "kernel" -o $2 == "1" ]; then
git fetch https://source.codeaurora.org/quic/la/kernel/msm-4.14 $1&&git merge FETCH_HEAD
elif [ $2 == "qcacld" -o $2 == "2" ]; then
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0 $1&&git merge FETCH_HEAD
elif [ $2 == "qca-wifi" -o $2 == "3" ]; then
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn $1&&git merge FETCH_HEAD
elif [ $2 == "fw-api" -o $2 == "4" ]; then
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api $1&&git merge FETCH_HEAD
elif [ $2 == "audio" -o $2 == "5" ]; then
git fetch https://source.codeaurora.org/quic/la/platform/vendor/opensource/audio-kernel $1&&git merge FETCH_HEAD
elif [ $2 == "all" -o $2 == "0" ]; then
git fetch https://source.codeaurora.org/quic/la/kernel/msm-4.14 $1&&git merge FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0 $1&&git merge FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn $1&&git merge FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api $1&&git merge FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/opensource/audio-kernel $1&&git merge FETCH_HEAD
fi
