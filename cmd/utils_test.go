package cmd_test

import (
	"testing"

	. "github.com/pegnet/PegNetPool/cmd"
)

func TestAssetListContainsCaseInsensitive(t *testing.T) {
	if !AssetListContainsCaseInsensitive([]string{"a"}, "A") {
		t.Error("Should be equal")
	}
}
