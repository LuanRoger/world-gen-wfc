(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32 i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32) (result i32)))
 (type $7 (func (param i32 i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $9 (func (param i32 i32 i32 i32)))
 (type $10 (func (result i32)))
 (type $11 (func (result f64)))
 (type $12 (func (param i32 i32 i64) (result i32)))
 (type $13 (func (param i32 i64)))
 (type $14 (func (param i32) (result i64)))
 (type $15 (func (param i64) (result i64)))
 (type $16 (func (param i64)))
 (type $17 (func (param i32) (result f32)))
 (type $18 (func (param i32 i64) (result i32)))
 (type $19 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $src/constants/wfc-call-kind/WfcCallKind.COMPLETE (mut i32) (i32.const 0))
 (global $src/constants/wfc-call-kind/WfcCallKind.INTERATION (mut i32) (i32.const 1))
 (global $src/constants/atlas/AtlasIDs.PLAINS (mut i32) (i32.const 1))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $src/models/tile-socket/TileSocket.EMPTY (mut i32) (i32.const 0))
 (global $src/constants/tiles/TileIDs.NULL (mut i32) (i32.const 0))
 (global $src/constants/tiles/TileIDs.TEXT (mut i32) (i32.const 1))
 (global $src/constants/tiles/TileIDs.GRASS (mut i32) (i32.const 2))
 (global $src/constants/tiles/TileIDs.TREE (mut i32) (i32.const 3))
 (global $src/constants/tiles/TileIDs.RIVER (mut i32) (i32.const 4))
 (global $src/constants/tiles/TileIDs.DEEP_RIVER (mut i32) (i32.const 5))
 (global $src/constants/tiles/TileIDs.SAND (mut i32) (i32.const 6))
 (global $src/constants/tiles/TileIDs.MOUNTAIN (mut i32) (i32.const 8))
 (global $src/constants/tiles/TileIDs.MOUNTAIN_PEEK (mut i32) (i32.const 9))
 (global $src/constants/tiles/TileIDs.DIRT (mut i32) (i32.const 10))
 (global $src/constants/tiles/TileIDs.DESERT_SAND (mut i32) (i32.const 11))
 (global $src/constants/tiles/TileIDs.ROCK (mut i32) (i32.const 12))
 (global $src/constants/tiles/TileIDs.CACTUS (mut i32) (i32.const 13))
 (global $src/constants/tiles/TileIDs.DEEP_OCEAN (mut i32) (i32.const 14))
 (global $src/constants/tiles/TileIDs.OCEAN (mut i32) (i32.const 15))
 (global $src/constants/tiles/TileIDs.WATER (mut i32) (i32.const 16))
 (global $src/constants/tiles/TileIDs.OCEAN_COATS_SAND (mut i32) (i32.const 17))
 (global $src/constants/tiles/TileIDs.OCEAN_COAST_GRASS (mut i32) (i32.const 18))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $src/models/atlas/plains-atlas/PlainAtlas.instance (mut i32) (i32.const 0))
 (global $src/models/tiles/empty-tile/EmptyTile.instance (mut i32) (i32.const 0))
 (global $src/constants/generation-step/GenerationStep.IDLE (mut i32) (i32.const 0))
 (global $src/constants/generation-step/GenerationStep.WAVE_COLLAPSE (mut i32) (i32.const 1))
 (global $src/constants/generation-step/GenerationStep.PROPAGATION (mut i32) (i32.const 2))
 (global $src/constants/generation-step/GenerationStep.POST_GENERATION_PROCESSING (mut i32) (i32.const 3))
 (global $src/constants/generation-step/GenerationStep.FINISHED (mut i32) (i32.const 4))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $src/index/generator (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 992))
 (global $~lib/memory/__data_end i32 (i32.const 1144))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33912))
 (global $~lib/memory/__heap_base i32 (i32.const 33912))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 80) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 108) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 172) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 220) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $5 (i32.const 288) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 412) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 444) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 476) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 508) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 540) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $13 (i32.const 588) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $14 (i32.const 636) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 764) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 796) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $17 (i32.const 828) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 860) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data $19 (i32.const 924) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data $20 (i32.const 992) "%\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00B\00\00\00\02\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00 \00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\02A\00\00 \00\00\00\00\00\00\00\02A\00\00\02A\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "interate" (func $src/index/interate))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 128
   i32.const 192
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 32
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $src/models/tile-socket/TileSocket#set:fitTop (param $this i32) (param $fitTop i32)
  local.get $this
  local.get $fitTop
  i32.store
  local.get $this
  local.get $fitTop
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/models/tile-socket/TileSocket#set:fitRight (param $this i32) (param $fitRight i32)
  local.get $this
  local.get $fitRight
  i32.store offset=4
  local.get $this
  local.get $fitRight
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/models/tile-socket/TileSocket#set:fitBottom (param $this i32) (param $fitBottom i32)
  local.get $this
  local.get $fitBottom
  i32.store offset=8
  local.get $this
  local.get $fitBottom
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/models/tile-socket/TileSocket#set:fitLeft (param $this i32) (param $fitLeft i32)
  local.get $this
  local.get $fitLeft
  i32.store offset=12
  local.get $this
  local.get $fitLeft
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 240
   i32.const 368
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 240
   i32.const 32
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/rt/__newBuffer (param $size i32) (param $id i32) (param $data i32) (result i32)
  (local $buffer i32)
  local.get $size
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $buffer
  local.get $data
  if
   local.get $buffer
   local.get $data
   local.get $size
   memory.copy
  end
  local.get $buffer
  return
 )
 (func $start:src/models/tiles/map-tile
  call $start:src/models/tile-socket
 )
 (func $start:src/wfc/tile-atlas
  call $start:src/models/tiles/map-tile
 )
 (func $src/wfc/tile-atlas/TileAtlas#set:id (param $this i32) (param $id i32)
  local.get $this
  local.get $id
  i32.store8
 )
 (func $src/wfc/tile-atlas/TileAtlas#set:mapTiles (param $this i32) (param $mapTiles i32)
  local.get $this
  local.get $mapTiles
  i32.store offset=4
  local.get $this
  local.get $mapTiles
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/tile-atlas/TileAtlas#set:collapseFrequency (param $this i32) (param $collapseFrequency i32)
  local.get $this
  local.get $collapseFrequency
  i32.store offset=8
  local.get $this
  local.get $collapseFrequency
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/models/metadata/map-tile-metadata/MapTileMetadata#set:id (param $this i32) (param $id i32)
  local.get $this
  local.get $id
  i32.store8
 )
 (func $src/models/metadata/map-tile-metadata/MapTileMetadata#set:isolationGroup (param $this i32) (param $isolationGroup i32)
  local.get $this
  local.get $isolationGroup
  i32.store offset=4
  local.get $this
  local.get $isolationGroup
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/models/tiles/map-tile/MapTile#set:tileSocket (param $this i32) (param $tileSocket i32)
  local.get $this
  local.get $tileSocket
  i32.store offset=8
  local.get $this
  local.get $tileSocket
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u8>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy
  local.get $newPtr
  return
 )
 (func $~lib/array/Array<u8>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<u8>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $start:src/models/atlas/plains-atlas
  call $start:src/wfc/tile-atlas
  i32.const 0
  call $src/models/atlas/plains-atlas/PlainAtlas#constructor
  global.set $src/models/atlas/plains-atlas/PlainAtlas.instance
 )
 (func $src/wfc/world-generation/WorldGeneration#set:width (param $this i32) (param $width i32)
  local.get $this
  local.get $width
  i32.store16
 )
 (func $src/wfc/world-generation/WorldGeneration#set:height (param $this i32) (param $height i32)
  local.get $this
  local.get $height
  i32.store16 offset=2
 )
 (func $src/wfc/world-generation/WorldGeneration#set:seed (param $this i32) (param $seed i32)
  local.get $this
  local.get $seed
  i32.store offset=8
 )
 (func $src/wfc/wave-map/WaveMap#set:width (param $this i32) (param $width i32)
  local.get $this
  local.get $width
  i32.store16
 )
 (func $src/wfc/wave-map/WaveMap#set:height (param $this i32) (param $height i32)
  local.get $this
  local.get $height
  i32.store16 offset=2
 )
 (func $src/wfc/wave-map/WaveMap#set:tileAtlas (param $this i32) (param $tileAtlas i32)
  local.get $this
  local.get $tileAtlas
  i32.store offset=4
  local.get $this
  local.get $tileAtlas
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/utils/random/Random#set:seed (param $this i32) (param $seed i64)
  local.get $this
  local.get $seed
  i64.store
 )
 (func $src/utils/random/Random#get:seed (param $this i32) (result i64)
  local.get $this
  i64.load
 )
 (func $~lib/math/murmurHash3 (param $h i64) (result i64)
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  i64.const -49064778989728563
  i64.mul
  local.set $h
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  i64.const -4265267296055464877
  i64.mul
  local.set $h
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  return
 )
 (func $~lib/math/splitMix32 (param $h i32) (result i32)
  local.get $h
  i32.const 1831565813
  i32.add
  local.set $h
  local.get $h
  local.get $h
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $h
  i32.const 1
  i32.or
  i32.mul
  local.set $h
  local.get $h
  local.get $h
  local.get $h
  local.get $h
  i32.const 7
  i32.shr_u
  i32.xor
  local.get $h
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  local.set $h
  local.get $h
  local.get $h
  i32.const 14
  i32.shr_u
  i32.xor
  return
 )
 (func $~lib/math/NativeMath.seedRandom (param $value i64)
  local.get $value
  i64.const 0
  i64.eq
  if
   i64.const -7046029254386353131
   local.set $value
  end
  local.get $value
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state1_64
  local.get $value
  i32.wrap_i64
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state1_32
  i32.const 1
  global.set $~lib/math/random_seeded
 )
 (func $src/wfc/wave-map/WaveMap#set:rng (param $this i32) (param $rng i32)
  local.get $this
  local.get $rng
  i32.store offset=12
  local.get $this
  local.get $rng
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u8>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u8>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<u8>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $src/wfc/tile-atlas/TileAtlas#get:mapTiles (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/models/metadata/map-tile-metadata/MapTileMetadata#get:id (param $this i32) (result i32)
  local.get $this
  i32.load8_u
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/wfc/wave-possition/WavePossition#set:entropy (param $this i32) (param $entropy i32)
  local.get $this
  local.get $entropy
  i32.store
  local.get $this
  local.get $entropy
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<src/wfc/wave-possition/WavePossition>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/wfc/wave/Wave#set:width (param $this i32) (param $width i32)
  local.get $this
  local.get $width
  i32.store16
 )
 (func $src/wfc/wave/Wave#set:height (param $this i32) (param $height i32)
  local.get $this
  local.get $height
  i32.store16 offset=2
 )
 (func $src/wfc/wave/Wave#set:wavePossition (param $this i32) (param $wavePossition i32)
  local.get $this
  local.get $wavePossition
  i32.store offset=4
  local.get $this
  local.get $wavePossition
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/wave-map/WaveMap#set:wave (param $this i32) (param $wave i32)
  local.get $this
  local.get $wave
  i32.store offset=8
  local.get $this
  local.get $wave
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/world-generation/WorldGeneration#set:waveMap (param $this i32) (param $waveMap i32)
  local.get $this
  local.get $waveMap
  i32.store offset=12
  local.get $this
  local.get $waveMap
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/tile-atlas/TileAtlas#get:id (param $this i32) (result i32)
  local.get $this
  i32.load8_u
 )
 (func $src/wfc/world-generation/WorldGeneration#set:atlasId (param $this i32) (param $atlasId i32)
  local.get $this
  local.get $atlasId
  i32.store8 offset=4
 )
 (func $src/wfc/world-generation/WorldGeneration#set:updateMapInstance (param $this i32) (param $updateMapInstance i32)
  local.get $this
  local.get $updateMapInstance
  i32.store8 offset=16
 )
 (func $src/wfc/world-generation/WorldGeneration#set:generationStep (param $this i32) (param $generationStep i32)
  local.get $this
  local.get $generationStep
  i32.store8 offset=17
 )
 (func $src/wfc/world-generation/WorldGeneration#set:clean (param $this i32) (param $clean i32)
  local.get $this
  local.get $clean
  i32.store8 offset=18
 )
 (func $src/wfc/world-generation/WorldGeneration#get:waveMap (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $src/wfc/wave-map/WaveMap#get:height (param $this i32) (result i32)
  local.get $this
  i32.load16_u offset=2
 )
 (func $src/wfc/wave-map/WaveMap#get:width (param $this i32) (result i32)
  local.get $this
  i32.load16_u
 )
 (func $src/wfc/wave-map/WaveMap#get:wave (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $src/wfc/wave/Wave#get:wavePossition (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/wfc/wave-possition/WavePossition#get:entropy (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/wfc/wave-possition-point/WavePossitionPoint#set:row (param $this i32) (param $row i32)
  local.get $this
  local.get $row
  i32.store16
 )
 (func $src/wfc/wave-possition-point/WavePossitionPoint#set:column (param $this i32) (param $column i32)
  local.get $this
  local.get $column
  i32.store16 offset=2
 )
 (func $src/wfc/wave-possition-point/WavePossitionPoint#get:row (param $this i32) (result i32)
  local.get $this
  i32.load16_u
 )
 (func $src/wfc/wave-possition-point/WavePossitionPoint#get:column (param $this i32) (result i32)
  local.get $this
  i32.load16_u offset=2
 )
 (func $src/wfc/wave-map/WaveMap#get:tileAtlas (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/wfc/tile-atlas/TileAtlas#get:collapseFrequency (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/wfc/collapse-frequency/CollapseFrequency#get:tileId (param $this i32) (result i32)
  local.get $this
  i32.load8_u
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $src/wfc/wave-map/WaveMap#get:rng (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/math/NativeMath.random (result f64)
  (local $s1 i64)
  (local $s0 i64)
  (local $r i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
  end
  global.get $~lib/math/random_state0_64
  local.set $s1
  global.get $~lib/math/random_state1_64
  local.set $s0
  local.get $s0
  global.set $~lib/math/random_state0_64
  local.get $s1
  local.get $s1
  i64.const 23
  i64.shl
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s1
  i64.const 17
  i64.shr_u
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s0
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s0
  i64.const 26
  i64.shr_u
  i64.xor
  local.set $s1
  local.get $s1
  global.set $~lib/math/random_state1_64
  local.get $s0
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  local.set $r
  local.get $r
  f64.reinterpret_i64
  f64.const 1
  f64.sub
  return
 )
 (func $src/wfc/collapse-frequency/CollapseFrequency#get:frequency (param $this i32) (result f32)
  local.get $this
  f32.load offset=4
 )
 (func $src/utils/random/Random#generateRandomIndex (param $this i32) (param $length i32) (result i32)
  (local $max i32)
  (local $random f64)
  (local $randomIndex f64)
  (local $x f64)
  local.get $length
  local.set $max
  call $~lib/math/NativeMath.random
  local.set $random
  local.get $random
  local.get $max
  i32.const 0
  i32.sub
  f64.convert_i32_s
  f64.mul
  local.set $randomIndex
  block $~lib/math/NativeMath.floor|inlined.0 (result f64)
   local.get $randomIndex
   local.set $x
   local.get $x
   f64.floor
   br $~lib/math/NativeMath.floor|inlined.0
  end
  i32.trunc_sat_f64_s
  return
 )
 (func $src/wfc/world-generation/WorldGeneration#get:width (param $this i32) (result i32)
  local.get $this
  i32.load16_u
 )
 (func $src/wfc/world-generation/WorldGeneration#get:height (param $this i32) (result i32)
  local.get $this
  i32.load16_u offset=2
 )
 (func $src/models/tiles/super-tile/SuperTile#set:entropy (param $this i32) (param $entropy i32)
  local.get $this
  local.get $entropy
  i32.store offset=12
  local.get $this
  local.get $entropy
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/models/tiles/map-tile/MapTile#get:tileSocket (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#set:topRaw (param $this i32) (param $topRaw i32)
  local.get $this
  local.get $topRaw
  i32.store16
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#set:bottomRaw (param $this i32) (param $bottomRaw i32)
  local.get $this
  local.get $bottomRaw
  i32.store16 offset=2
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#set:leftRaw (param $this i32) (param $leftRaw i32)
  local.get $this
  local.get $leftRaw
  i32.store16 offset=4
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#set:rightRaw (param $this i32) (param $rightRaw i32)
  local.get $this
  local.get $rightRaw
  i32.store16 offset=6
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#set:top (param $this i32) (param $top i32)
  local.get $this
  local.get $top
  i32.store offset=8
  local.get $this
  local.get $top
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#set:bottom (param $this i32) (param $bottom i32)
  local.get $this
  local.get $bottom
  i32.store offset=12
  local.get $this
  local.get $bottom
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#set:left (param $this i32) (param $left i32)
  local.get $this
  local.get $left
  i32.store offset=16
  local.get $this
  local.get $left
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#set:right (param $this i32) (param $right i32)
  local.get $this
  local.get $right
  i32.store offset=20
  local.get $this
  local.get $right
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#set:top (param $this i32) (param $top i32)
  local.get $this
  local.get $top
  i32.store8
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#set:right (param $this i32) (param $right i32)
  local.get $this
  local.get $right
  i32.store8 offset=1
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#set:bottom (param $this i32) (param $bottom i32)
  local.get $this
  local.get $bottom
  i32.store8 offset=2
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#set:left (param $this i32) (param $left i32)
  local.get $this
  local.get $left
  i32.store8 offset=3
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:topRaw (param $this i32) (result i32)
  local.get $this
  i32.load16_u
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:rightRaw (param $this i32) (result i32)
  local.get $this
  i32.load16_u offset=6
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:bottomRaw (param $this i32) (result i32)
  local.get $this
  i32.load16_u offset=2
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:leftRaw (param $this i32) (result i32)
  local.get $this
  i32.load16_u offset=4
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#get:top (param $this i32) (result i32)
  local.get $this
  i32.load8_u
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:top (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $src/models/tile-socket/TileSocket#get:fitTop (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#get:bottom (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=2
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:bottom (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $src/models/tile-socket/TileSocket#get:fitBottom (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#get:left (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=3
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:left (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $src/models/tile-socket/TileSocket#get:fitLeft (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#get:right (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=1
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:right (param $this i32) (result i32)
  local.get $this
  i32.load offset=20
 )
 (func $src/models/tile-socket/TileSocket#get:fitRight (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/wfc/world-generation/WorldGeneration#get:generationStep (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=17
 )
 (func $src/models/metadata/map-tile-metadata/MapTileMetadata#get:isolationGroup (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/wfc/wave/Wave#get:width (param $this i32) (result i32)
  local.get $this
  i32.load16_u
 )
 (func $src/wfc/wave/Wave#get:height (param $this i32) (result i32)
  local.get $this
  i32.load16_u offset=2
 )
 (func $src/wfc/world-generation/WorldGeneration#get:clean (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=18
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $src/models/metadata/world-map-metdata/WorldMapMetadata#set:width (param $this i32) (param $width i32)
  local.get $this
  local.get $width
  i32.store16
 )
 (func $src/models/metadata/world-map-metdata/WorldMapMetadata#set:height (param $this i32) (param $height i32)
  local.get $this
  local.get $height
  i32.store16 offset=2
 )
 (func $src/models/metadata/world-map-metdata/WorldMapMetadata#set:atlasId (param $this i32) (param $atlasId i32)
  local.get $this
  local.get $atlasId
  i32.store8 offset=4
 )
 (func $src/models/metadata/world-map-metdata/WorldMapMetadata#set:mapTiles (param $this i32) (param $mapTiles i32)
  local.get $this
  local.get $mapTiles
  i32.store offset=8
  local.get $this
  local.get $mapTiles
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/wfc/world-generation/WorldGeneration#get:atlasId (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/rt/itcms/__pin (param $ptr i32) (result i32)
  (local $obj i32)
  local.get $ptr
  if
   local.get $ptr
   i32.const 20
   i32.sub
   local.set $obj
   local.get $obj
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 880
    i32.const 32
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__unpin (param $ptr i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 944
   i32.const 32
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.ne
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i32.const 200
  i64.extend_i32_u
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $src/index/generator
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 128
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 608
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 656
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 240
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 880
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 944
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $src/models/atlas/plains-atlas/PlainAtlas.instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/models/tiles/empty-tile/EmptyTile.instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/models/tile-socket/TileSocket.EMPTY
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $src/models/tile-socket/TileSocket~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<u8>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<u8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__visit
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $src/models/atlas/plains-atlas/PlainAtlas~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/wfc/tile-atlas/TileAtlas~visit
 )
 (func $src/wfc/tile-atlas/TileAtlas~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/models/tiles/map-tile/MapTile~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/models/metadata/map-tile-metadata/MapTileMetadata~visit
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/models/metadata/map-tile-metadata/MapTileMetadata~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__visit
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#__visit
 )
 (func $src/models/tiles/plains/grass-tile/GrassTile~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
 )
 (func $src/models/tiles/plains/mountain-tile/MountainTile~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
 )
 (func $src/models/tiles/plains/mountain-peek-tile/MountainPeekTile~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
 )
 (func $src/models/tiles/plains/river-tile/RiverTile~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
 )
 (func $src/models/tiles/plains/deep-river-tile/DeepRiverTile~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
 )
 (func $src/models/tiles/plains/sand-tile/SandTile~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
 )
 (func $src/models/tiles/plains/dirt-tile/DirtTile~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
 )
 (func $src/models/tiles/empty-tile/EmptyTile~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
 )
 (func $src/wfc/world-generation/WorldGeneration~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/wfc/wave-map/WaveMap~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/wfc/wave/Wave~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/wfc/wave-possition/WavePossition~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<src/wfc/wave-possition/WavePossition>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__visit
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__visit
 )
 (func $src/models/metadata/world-map-metdata/WorldMapMetadata~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#__visit
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#__visit
 )
 (func $src/models/tiles/super-tile/SuperTile~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/models/tiles/map-tile/MapTile~visit
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/models/world-map/WorldMap~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/models/metadata/world-map-metdata/WorldMapMetadata~visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $src/models/world-map/WorldMap
    block $src/wfc/boundries-check-result/BoundresCheckResult
     block $src/wfc/wave-possition-area/WavePossitionArea
      block $src/models/tiles/super-tile/SuperTile
       block $src/wfc/wave-possition-point/WavePossitionPoint
        block $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>
         block $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>
          block $src/models/metadata/world-map-metdata/WorldMapMetadata
           block $src/utils/random/Random
            block $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>
             block $~lib/array/Array<src/wfc/wave-possition/WavePossition>
              block $src/wfc/wave-possition/WavePossition
               block $src/wfc/wave/Wave
                block $src/wfc/wave-map/WaveMap
                 block $src/wfc/world-generation/WorldGeneration
                  block $src/models/tiles/empty-tile/EmptyTile
                   block $src/models/tiles/plains/dirt-tile/DirtTile
                    block $src/models/tiles/plains/sand-tile/SandTile
                     block $src/models/tiles/plains/deep-river-tile/DeepRiverTile
                      block $src/models/tiles/plains/river-tile/RiverTile
                       block $src/models/tiles/plains/mountain-peek-tile/MountainPeekTile
                        block $src/models/tiles/plains/mountain-tile/MountainTile
                         block $src/models/tiles/plains/grass-tile/GrassTile
                          block $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>
                           block $src/wfc/collapse-frequency/CollapseFrequency
                            block $~lib/array/Array<src/models/tiles/map-tile/MapTile>
                             block $src/models/metadata/map-tile-metadata/MapTileMetadata
                              block $src/models/tiles/map-tile/MapTile
                               block $src/wfc/tile-atlas/TileAtlas
                                block $src/models/atlas/plains-atlas/PlainAtlas
                                 block $~lib/array/Array<i32>
                                  block $~lib/array/Array<u8>
                                   block $src/models/tile-socket/TileSocket
                                    block $~lib/arraybuffer/ArrayBufferView
                                     block $~lib/string/String
                                      block $~lib/arraybuffer/ArrayBuffer
                                       block $~lib/object/Object
                                        local.get $0
                                        i32.const 8
                                        i32.sub
                                        i32.load
                                        br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $src/models/tile-socket/TileSocket $~lib/array/Array<u8> $~lib/array/Array<i32> $src/models/atlas/plains-atlas/PlainAtlas $src/wfc/tile-atlas/TileAtlas $src/models/tiles/map-tile/MapTile $src/models/metadata/map-tile-metadata/MapTileMetadata $~lib/array/Array<src/models/tiles/map-tile/MapTile> $src/wfc/collapse-frequency/CollapseFrequency $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency> $src/models/tiles/plains/grass-tile/GrassTile $src/models/tiles/plains/mountain-tile/MountainTile $src/models/tiles/plains/mountain-peek-tile/MountainPeekTile $src/models/tiles/plains/river-tile/RiverTile $src/models/tiles/plains/deep-river-tile/DeepRiverTile $src/models/tiles/plains/sand-tile/SandTile $src/models/tiles/plains/dirt-tile/DirtTile $src/models/tiles/empty-tile/EmptyTile $src/wfc/world-generation/WorldGeneration $src/wfc/wave-map/WaveMap $src/wfc/wave/Wave $src/wfc/wave-possition/WavePossition $~lib/array/Array<src/wfc/wave-possition/WavePossition> $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>> $src/utils/random/Random $src/models/metadata/world-map-metdata/WorldMapMetadata $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata> $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>> $src/wfc/wave-possition-point/WavePossitionPoint $src/models/tiles/super-tile/SuperTile $src/wfc/wave-possition-area/WavePossitionArea $src/wfc/boundries-check-result/BoundresCheckResult $src/models/world-map/WorldMap $invalid
                                       end
                                       return
                                      end
                                      return
                                     end
                                     return
                                    end
                                    local.get $0
                                    local.get $1
                                    call $~lib/arraybuffer/ArrayBufferView~visit
                                    return
                                   end
                                   local.get $0
                                   local.get $1
                                   call $src/models/tile-socket/TileSocket~visit
                                   return
                                  end
                                  local.get $0
                                  local.get $1
                                  call $~lib/array/Array<u8>~visit
                                  return
                                 end
                                 local.get $0
                                 local.get $1
                                 call $~lib/array/Array<i32>~visit
                                 return
                                end
                                local.get $0
                                local.get $1
                                call $src/models/atlas/plains-atlas/PlainAtlas~visit
                                return
                               end
                               local.get $0
                               local.get $1
                               call $src/wfc/tile-atlas/TileAtlas~visit
                               return
                              end
                              local.get $0
                              local.get $1
                              call $src/models/tiles/map-tile/MapTile~visit
                              return
                             end
                             local.get $0
                             local.get $1
                             call $src/models/metadata/map-tile-metadata/MapTileMetadata~visit
                             return
                            end
                            local.get $0
                            local.get $1
                            call $~lib/array/Array<src/models/tiles/map-tile/MapTile>~visit
                            return
                           end
                           return
                          end
                          local.get $0
                          local.get $1
                          call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>~visit
                          return
                         end
                         local.get $0
                         local.get $1
                         call $src/models/tiles/plains/grass-tile/GrassTile~visit
                         return
                        end
                        local.get $0
                        local.get $1
                        call $src/models/tiles/plains/mountain-tile/MountainTile~visit
                        return
                       end
                       local.get $0
                       local.get $1
                       call $src/models/tiles/plains/mountain-peek-tile/MountainPeekTile~visit
                       return
                      end
                      local.get $0
                      local.get $1
                      call $src/models/tiles/plains/river-tile/RiverTile~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $src/models/tiles/plains/deep-river-tile/DeepRiverTile~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $src/models/tiles/plains/sand-tile/SandTile~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $src/models/tiles/plains/dirt-tile/DirtTile~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $src/models/tiles/empty-tile/EmptyTile~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $src/wfc/world-generation/WorldGeneration~visit
                 return
                end
                local.get $0
                local.get $1
                call $src/wfc/wave-map/WaveMap~visit
                return
               end
               local.get $0
               local.get $1
               call $src/wfc/wave/Wave~visit
               return
              end
              local.get $0
              local.get $1
              call $src/wfc/wave-possition/WavePossition~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<src/wfc/wave-possition/WavePossition>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>~visit
            return
           end
           return
          end
          local.get $0
          local.get $1
          call $src/models/metadata/world-map-metdata/WorldMapMetadata~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>~visit
        return
       end
       return
      end
      local.get $0
      local.get $1
      call $src/models/tiles/super-tile/SuperTile~visit
      return
     end
     local.get $0
     local.get $1
     call $src/wfc/wave-possition-area/WavePossitionArea~visit
     return
    end
    return
   end
   local.get $0
   local.get $1
   call $src/models/world-map/WorldMap~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:src/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33936
   i32.const 33984
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $src/models/tile-socket/TileSocket#constructor (param $this i32) (param $fitTop i32) (param $fitRight i32) (param $fitBottom i32) (param $fitLeft i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/models/tile-socket/TileSocket#set:fitTop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/models/tile-socket/TileSocket#set:fitRight
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/models/tile-socket/TileSocket#set:fitBottom
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/models/tile-socket/TileSocket#set:fitLeft
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $fitTop
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/models/tile-socket/TileSocket#set:fitTop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $fitRight
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/models/tile-socket/TileSocket#set:fitRight
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $fitBottom
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/models/tile-socket/TileSocket#set:fitBottom
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $fitLeft
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/models/tile-socket/TileSocket#set:fitLeft
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $start:src/models/tile-socket
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  i32.const 80
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 288
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 5
  i32.const 432
  call $~lib/rt/__newArray
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  i32.const 0
  i32.const 0
  i32.const 5
  i32.const 464
  call $~lib/rt/__newArray
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 0
  i32.const 0
  i32.const 5
  i32.const 496
  call $~lib/rt/__newArray
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  i32.const 0
  i32.const 0
  i32.const 5
  i32.const 528
  call $~lib/rt/__newArray
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  call $src/models/tile-socket/TileSocket#constructor
  global.set $src/models/tile-socket/TileSocket.EMPTY
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/tile-atlas/TileAtlas#constructor (param $this i32) (param $id i32) (param $mapTiles i32) (param $collapseFrequency i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $src/wfc/tile-atlas/TileAtlas#set:id
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $src/wfc/tile-atlas/TileAtlas#set:mapTiles
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $src/wfc/tile-atlas/TileAtlas#set:collapseFrequency
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $id
  call $src/wfc/tile-atlas/TileAtlas#set:id
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $mapTiles
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $src/wfc/tile-atlas/TileAtlas#set:mapTiles
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $collapseFrequency
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $src/wfc/tile-atlas/TileAtlas#set:collapseFrequency
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/models/metadata/map-tile-metadata/MapTileMetadata#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/models/metadata/map-tile-metadata/MapTileMetadata#set:id
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/models/metadata/map-tile-metadata/MapTileMetadata#set:isolationGroup
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/models/tiles/map-tile/MapTile#constructor (param $this i32) (param $id i32) (param $tileSocket i32) (param $isolationGroup i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#set:tileSocket
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $src/models/metadata/map-tile-metadata/MapTileMetadata#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $id
  call $src/models/metadata/map-tile-metadata/MapTileMetadata#set:id
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $isolationGroup
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $src/models/metadata/map-tile-metadata/MapTileMetadata#set:isolationGroup
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $tileSocket
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $src/models/tiles/map-tile/MapTile#set:tileSocket
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 608
    i32.const 560
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store
    local.get $array
    local.get $newData
    i32.store offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u8>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u8>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 560
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 0
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<u8>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u8>#get:dataStart
  local.get $index
  i32.const 0
  i32.shl
  i32.add
  local.get $value
  i32.store8
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u8>#slice (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $slice i32)
  (local $sliceBase i32)
  (local $thisBase i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<u8>#get:length_
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $start
   local.get $len
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $end
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $end
   local.get $len
   i32.add
   local.tee $8
   i32.const 0
   local.tee $9
   local.get $8
   local.get $9
   i32.gt_s
   select
  else
   local.get $end
   local.tee $10
   local.get $len
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $end
  local.get $end
  local.get $start
  i32.sub
  local.tee $12
  i32.const 0
  local.tee $13
  local.get $12
  local.get $13
  i32.gt_s
  select
  local.set $len
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $slice
  i32.store offset=4
  local.get $slice
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<u8>#get:dataStart
  local.set $sliceBase
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<u8>#get:dataStart
  local.get $start
  i32.const 0
  i32.shl
  i32.add
  local.set $thisBase
  i32.const 0
  drop
  local.get $sliceBase
  local.get $thisBase
  local.get $len
  i32.const 0
  i32.shl
  memory.copy
  local.get $slice
  local.set $17
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $17
  return
 )
 (func $~lib/array/Array<u8>#slice@varargs (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $start
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $end
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $start
  local.get $end
  call $~lib/array/Array<u8>#slice
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/models/tile-socket/TileSocket.fromGroup (param $fit i32) (result i32)
  (local $top i32)
  (local $right i32)
  (local $bottom i32)
  (local $left i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $fit
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/array/Array<u8>#slice@varargs
  local.tee $top
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $fit
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/array/Array<u8>#slice@varargs
  local.tee $right
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $fit
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/array/Array<u8>#slice@varargs
  local.tee $bottom
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $fit
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/array/Array<u8>#slice@varargs
  local.tee $left
  i32.store offset=16
  i32.const 0
  local.get $top
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $right
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=20
  local.get $5
  local.get $bottom
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=24
  local.get $5
  local.get $left
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=28
  local.get $5
  call $src/models/tile-socket/TileSocket#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $src/models/tiles/plains/grass-tile/GrassTile#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $src/constants/tiles/TileIDs.GRASS
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $1
  i32.const 0
  global.get $src/constants/tiles/TileIDs.GRASS
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 1
  global.get $src/constants/tiles/TileIDs.TREE
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 2
  global.get $src/constants/tiles/TileIDs.MOUNTAIN
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 3
  global.get $src/constants/tiles/TileIDs.SAND
  call $~lib/array/Array<u8>#__set
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/models/tile-socket/TileSocket.fromGroup
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/models/tiles/plains/mountain-tile/MountainTile#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $src/constants/tiles/TileIDs.ROCK
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $1
  i32.const 0
  global.get $src/constants/tiles/TileIDs.MOUNTAIN
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 1
  global.get $src/constants/tiles/TileIDs.MOUNTAIN_PEEK
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 2
  global.get $src/constants/tiles/TileIDs.GRASS
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 3
  global.get $src/constants/tiles/TileIDs.SAND
  call $~lib/array/Array<u8>#__set
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/models/tile-socket/TileSocket.fromGroup
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/models/tiles/plains/mountain-peek-tile/MountainPeekTile#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $src/constants/tiles/TileIDs.MOUNTAIN_PEEK
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $1
  i32.const 0
  global.get $src/constants/tiles/TileIDs.MOUNTAIN_PEEK
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 1
  global.get $src/constants/tiles/TileIDs.MOUNTAIN
  call $~lib/array/Array<u8>#__set
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/models/tile-socket/TileSocket.fromGroup
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/models/tiles/plains/river-tile/RiverTile#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $src/constants/tiles/TileIDs.RIVER
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $1
  i32.const 0
  global.get $src/constants/tiles/TileIDs.RIVER
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 1
  global.get $src/constants/tiles/TileIDs.DEEP_RIVER
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 2
  global.get $src/constants/tiles/TileIDs.SAND
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 3
  global.get $src/constants/tiles/TileIDs.DIRT
  call $~lib/array/Array<u8>#__set
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/models/tile-socket/TileSocket.fromGroup
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/models/tiles/plains/deep-river-tile/DeepRiverTile#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $src/constants/tiles/TileIDs.DEEP_RIVER
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $1
  i32.const 0
  global.get $src/constants/tiles/TileIDs.DEEP_RIVER
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 1
  global.get $src/constants/tiles/TileIDs.RIVER
  call $~lib/array/Array<u8>#__set
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/models/tile-socket/TileSocket.fromGroup
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/models/tiles/plains/sand-tile/SandTile#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $src/constants/tiles/TileIDs.SAND
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $1
  i32.const 0
  global.get $src/constants/tiles/TileIDs.SAND
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 1
  global.get $src/constants/tiles/TileIDs.GRASS
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 2
  global.get $src/constants/tiles/TileIDs.RIVER
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 3
  global.get $src/constants/tiles/TileIDs.DIRT
  call $~lib/array/Array<u8>#__set
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/models/tile-socket/TileSocket.fromGroup
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/models/tiles/plains/dirt-tile/DirtTile#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $src/constants/tiles/TileIDs.DIRT
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $1
  i32.const 0
  global.get $src/constants/tiles/TileIDs.DIRT
  call $~lib/array/Array<u8>#__set
  local.get $1
  i32.const 1
  global.get $src/constants/tiles/TileIDs.GRASS
  call $~lib/array/Array<u8>#__set
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/models/tile-socket/TileSocket.fromGroup
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 560
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/models/atlas/plains-atlas/PlainAtlas#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $src/constants/atlas/AtlasIDs.PLAINS
  global.get $~lib/memory/__stack_pointer
  i32.const 7
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.const 0
  call $src/models/tiles/plains/grass-tile/GrassTile#constructor
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__set
  local.get $1
  i32.const 1
  i32.const 0
  call $src/models/tiles/plains/mountain-tile/MountainTile#constructor
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__set
  local.get $1
  i32.const 2
  i32.const 0
  call $src/models/tiles/plains/mountain-peek-tile/MountainPeekTile#constructor
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__set
  local.get $1
  i32.const 3
  i32.const 0
  call $src/models/tiles/plains/river-tile/RiverTile#constructor
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__set
  local.get $1
  i32.const 4
  i32.const 0
  call $src/models/tiles/plains/deep-river-tile/DeepRiverTile#constructor
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__set
  local.get $1
  i32.const 5
  i32.const 0
  call $src/models/tiles/plains/sand-tile/SandTile#constructor
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__set
  local.get $1
  i32.const 6
  i32.const 0
  call $src/models/tiles/plains/dirt-tile/DirtTile#constructor
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__set
  local.get $1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 0
  call $src/wfc/tile-atlas/TileAtlas#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/utils/random/Random#constructor (param $this i32) (param $seed i64) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 28
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i64.const 0
  call $src/utils/random/Random#set:seed
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $seed
  call $src/utils/random/Random#set:seed
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/utils/random/Random#get:seed
  call $~lib/math/NativeMath.seedRandom
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<u8>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u8>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u8>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u8>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u8>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 0
  i32.shr_u
  i32.gt_u
  if
   i32.const 608
   i32.const 560
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 0
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<u8>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<u8>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<u8>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<u8>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 560
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 656
   i32.const 560
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/wfc/tile-atlas/TileAtlas#validInitialTiles (param $this i32) (result i32)
  (local $tileIds i32)
  (local $i i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/wfc/tile-atlas/TileAtlas#get:mapTiles
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length
  call $~lib/array/Array<u8>#constructor
  local.tee $tileIds
  i32.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $src/wfc/tile-atlas/TileAtlas#get:mapTiles
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length
   i32.lt_s
   if
    local.get $tileIds
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $i
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=16
    local.get $3
    call $src/wfc/tile-atlas/TileAtlas#get:mapTiles
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $3
    local.get $i
    call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    call $src/models/metadata/map-tile-metadata/MapTileMetadata#get:id
    call $~lib/array/Array<u8>#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $tileIds
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 27
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 608
   i32.const 560
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 560
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/wave-possition/WavePossition#constructor (param $this i32) (param $entropy i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 25
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $src/wfc/wave-possition/WavePossition#set:entropy
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $entropy
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $src/wfc/wave-possition/WavePossition#set:entropy
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 560
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 656
   i32.const 560
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 560
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/wave-map/WaveMap.initializeWave (param $width i32) (param $height i32) (param $vaidTiles i32) (result i32)
  (local $wavePossition i32)
  (local $x i32)
  (local $5 i32)
  (local $6 i32)
  (local $y i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $width
  i32.const 65535
  i32.and
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#constructor
  local.tee $wavePossition
  i32.store
  i32.const 0
  local.set $x
  loop $for-loop|0
   local.get $x
   local.get $width
   i32.const 65535
   i32.and
   i32.lt_u
   if
    local.get $wavePossition
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    local.get $x
    i32.const 0
    i32.const 2
    i32.const 26
    i32.const 784
    call $~lib/rt/__newArray
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=8
    local.get $8
    call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__set
    i32.const 0
    local.set $y
    loop $for-loop|1
     local.get $y
     local.get $height
     i32.const 65535
     i32.and
     i32.lt_u
     if
      local.get $wavePossition
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=12
      local.get $8
      local.get $x
      call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $y
      i32.const 0
      local.get $vaidTiles
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=12
      local.get $8
      call $src/wfc/wave-possition/WavePossition#constructor
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__set
      local.get $y
      i32.const 1
      i32.add
      local.set $y
      br $for-loop|1
     end
    end
    local.get $x
    i32.const 1
    i32.add
    local.set $x
    br $for-loop|0
   end
  end
  local.get $wavePossition
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $src/wfc/wave/Wave#constructor (param $this i32) (param $width i32) (param $height i32) (param $wavePossition i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 24
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $src/wfc/wave/Wave#set:width
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $src/wfc/wave/Wave#set:height
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $src/wfc/wave/Wave#set:wavePossition
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $width
  call $src/wfc/wave/Wave#set:width
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $height
  call $src/wfc/wave/Wave#set:height
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $wavePossition
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $src/wfc/wave/Wave#set:wavePossition
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/wfc/wave-map/WaveMap#constructor (param $this i32) (param $width i32) (param $height i32) (param $tileAtlas i32) (result i32)
  (local $wavePossition i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 23
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/wave-map/WaveMap#set:width
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/wave-map/WaveMap#set:height
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/wave-map/WaveMap#set:tileAtlas
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/wave-map/WaveMap#set:wave
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/wave-map/WaveMap#set:rng
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $width
  call $src/wfc/wave-map/WaveMap#set:width
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $height
  call $src/wfc/wave-map/WaveMap#set:height
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $tileAtlas
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/wfc/wave-map/WaveMap#set:tileAtlas
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  i64.const 0
  call $src/utils/random/Random#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/wfc/wave-map/WaveMap#set:rng
  global.get $~lib/memory/__stack_pointer
  local.get $width
  local.get $height
  local.get $tileAtlas
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/wfc/tile-atlas/TileAtlas#validInitialTiles
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/wfc/wave-map/WaveMap.initializeWave
  local.tee $wavePossition
  i32.store offset=12
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  local.get $width
  local.get $height
  local.get $wavePossition
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=16
  local.get $5
  call $src/wfc/wave/Wave#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/wfc/wave-map/WaveMap#set:wave
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/wfc/world-generation/WorldGeneration#constructor (param $this i32) (param $width i32) (param $height i32) (param $seed i32) (param $tileAtlas i32) (param $updateMapInstance i32) (result i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 19
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/world-generation/WorldGeneration#set:width
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/world-generation/WorldGeneration#set:height
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/world-generation/WorldGeneration#set:atlasId
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/world-generation/WorldGeneration#set:seed
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/world-generation/WorldGeneration#set:waveMap
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1
  call $src/wfc/world-generation/WorldGeneration#set:updateMapInstance
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  global.get $src/constants/generation-step/GenerationStep.IDLE
  call $src/wfc/world-generation/WorldGeneration#set:generationStep
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/world-generation/WorldGeneration#set:clean
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $width
  call $src/wfc/world-generation/WorldGeneration#set:width
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $height
  call $src/wfc/world-generation/WorldGeneration#set:height
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $seed
  call $src/wfc/world-generation/WorldGeneration#set:seed
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  local.get $width
  local.get $height
  local.get $tileAtlas
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $src/wfc/wave-map/WaveMap#constructor
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/wfc/world-generation/WorldGeneration#set:waveMap
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $tileAtlas
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/wfc/tile-atlas/TileAtlas#get:id
  call $src/wfc/world-generation/WorldGeneration#set:atlasId
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $updateMapInstance
  call $src/wfc/world-generation/WorldGeneration#set:updateMapInstance
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $start:src/index
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $start:src/models/atlas/plains-atlas
  i32.const 0
  i32.const 10
  i32.const 10
  i32.const 0
  i32.const 0
  call $src/models/atlas/plains-atlas/PlainAtlas#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1
  call $src/wfc/world-generation/WorldGeneration#constructor
  global.set $src/index/generator
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 560
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 656
   i32.const 560
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<u8>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<u8>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition/WavePossition#collapsed (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/wfc/wave-possition/WavePossition#get:entropy
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<u8>#get:length
  i32.const 1
  i32.eq
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition/WavePossition#conflict (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/wfc/wave-possition/WavePossition#get:entropy
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<u8>#get:length
  i32.const 0
  i32.eq
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-point/WavePossitionPoint#constructor (param $this i32) (param $row i32) (param $column i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 32
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $src/wfc/wave-possition-point/WavePossitionPoint#set:row
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $src/wfc/wave-possition-point/WavePossitionPoint#set:column
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $row
  call $src/wfc/wave-possition-point/WavePossitionPoint#set:row
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $column
  call $src/wfc/wave-possition-point/WavePossitionPoint#set:column
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/wfc/wave-map/WaveMap#getSmallerEntropyPossition (param $this i32) (param $includeConflicts i32) (result i32)
  (local $smallerEntropyRow i32)
  (local $smallerEntropyCol i32)
  (local $smallerEntropyLength i32)
  (local $row i32)
  (local $col i32)
  (local $wavePossition i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  i32.const 0
  local.set $smallerEntropyRow
  i32.const 0
  local.set $smallerEntropyCol
  i32.const 999
  local.set $smallerEntropyLength
  i32.const 0
  local.set $row
  loop $for-loop|0
   local.get $row
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $src/wfc/wave-map/WaveMap#get:height
   i32.const 65535
   i32.and
   i32.lt_u
   if
    i32.const 0
    local.set $col
    loop $for-loop|1
     local.get $col
     local.get $this
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     call $src/wfc/wave-map/WaveMap#get:width
     i32.const 65535
     i32.and
     i32.lt_u
     if
      block $for-continue|1
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store offset=12
       local.get $8
       call $src/wfc/wave-map/WaveMap#get:wave
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store offset=8
       local.get $8
       call $src/wfc/wave/Wave#get:wavePossition
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store offset=4
       local.get $8
       local.get $row
       call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store
       local.get $8
       local.get $col
       call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__get
       local.tee $wavePossition
       i32.store offset=16
       local.get $wavePossition
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store
       local.get $8
       call $src/wfc/wave-possition/WavePossition#collapsed
       if (result i32)
        i32.const 1
       else
        local.get $includeConflicts
        i32.eqz
        if (result i32)
         local.get $wavePossition
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         local.get $8
         call $src/wfc/wave-possition/WavePossition#conflict
        else
         i32.const 0
        end
       end
       if (result i32)
        i32.const 1
       else
        local.get $wavePossition
        local.set $8
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store offset=4
        local.get $8
        call $src/wfc/wave-possition/WavePossition#get:entropy
        local.set $8
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        local.get $8
        call $~lib/array/Array<u8>#get:length
        local.get $smallerEntropyLength
        i32.ge_s
       end
       if
        br $for-continue|1
       end
       local.get $wavePossition
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store offset=4
       local.get $8
       call $src/wfc/wave-possition/WavePossition#get:entropy
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store
       local.get $8
       call $~lib/array/Array<u8>#get:length
       local.set $smallerEntropyLength
       local.get $row
       local.set $smallerEntropyRow
       local.get $col
       local.set $smallerEntropyCol
      end
      local.get $col
      i32.const 1
      i32.add
      local.set $col
      br $for-loop|1
     end
    end
    local.get $row
    i32.const 1
    i32.add
    local.set $row
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $smallerEntropyRow
  local.get $smallerEntropyCol
  call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $src/wfc/wave-map/WaveMap#getPossitionAtPoint (param $this i32) (param $point i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $src/wfc/wave-map/WaveMap#get:wave
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $src/wfc/wave/Wave#get:wavePossition
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $point
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:row
  i32.const 65535
  i32.and
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $point
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:column
  i32.const 65535
  i32.and
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 560
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 656
   i32.const 560
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<u8>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u8>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 560
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u8>#get:dataStart
  local.get $index
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
  local.set $value
  i32.const 0
  drop
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $src/utils/random/Random#pickTileIdByFrequency (param $this i32) (param $collapseFrequencies i32) (result i32)
  (local $random f64)
  (local $i i32)
  (local $frequency i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  call $~lib/math/NativeMath.random
  local.set $random
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $collapseFrequencies
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $collapseFrequencies
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $i
    call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#__get
    local.tee $frequency
    i32.store offset=4
    local.get $random
    local.get $frequency
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $src/wfc/collapse-frequency/CollapseFrequency#get:frequency
    f64.promote_f32
    f64.lt
    if
     local.get $frequency
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $src/wfc/collapse-frequency/CollapseFrequency#get:tileId
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     return
    end
    local.get $random
    local.get $frequency
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $src/wfc/collapse-frequency/CollapseFrequency#get:frequency
    f64.promote_f32
    f64.sub
    local.set $random
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $collapseFrequencies
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  i32.const 0
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/collapse-frequency/CollapseFrequency#get:tileId
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $src/wfc/wave-map/WaveMap#getRandomTileFromPossition (param $this i32) (param $possition i32) (result i32)
  (local $wavePossition i32)
  (local $collapseFrequencies i32)
  (local $4 i32)
  (local $5 i32)
  (local $filteredFrequencies i32)
  (local $i i32)
  (local $frequency i32)
  (local $j i32)
  (local $tileIndex i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  local.get $possition
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
  local.tee $wavePossition
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $src/wfc/wave-map/WaveMap#get:tileAtlas
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  call $src/wfc/tile-atlas/TileAtlas#get:collapseFrequency
  local.tee $collapseFrequencies
  i32.store offset=12
  local.get $collapseFrequencies
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 13
   i32.const 816
   call $~lib/rt/__newArray
   local.tee $filteredFrequencies
   i32.store offset=16
   i32.const 0
   local.set $i
   loop $for-loop|0
    local.get $i
    local.get $collapseFrequencies
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:length
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $collapseFrequencies
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     local.get $11
     local.get $i
     call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#__get
     local.tee $frequency
     i32.store offset=20
     i32.const 0
     local.set $j
     block $for-break1
      loop $for-loop|1
       local.get $j
       local.get $wavePossition
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store offset=4
       local.get $11
       call $src/wfc/wave-possition/WavePossition#get:entropy
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store
       local.get $11
       call $~lib/array/Array<u8>#get:length
       i32.lt_s
       if
        local.get $frequency
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $11
        call $src/wfc/collapse-frequency/CollapseFrequency#get:tileId
        i32.const 255
        i32.and
        local.get $wavePossition
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store offset=4
        local.get $11
        call $src/wfc/wave-possition/WavePossition#get:entropy
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $11
        local.get $j
        call $~lib/array/Array<u8>#__get
        i32.eq
        if
         local.get $filteredFrequencies
         local.set $11
         global.get $~lib/memory/__stack_pointer
         local.get $11
         i32.store
         local.get $11
         local.get $frequency
         local.set $11
         global.get $~lib/memory/__stack_pointer
         local.get $11
         i32.store offset=4
         local.get $11
         call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#push
         drop
         br $for-break1
        end
        local.get $j
        i32.const 1
        i32.add
        local.set $j
        br $for-loop|1
       end
      end
     end
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|0
    end
   end
   local.get $this
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=24
   local.get $11
   call $src/wfc/wave-map/WaveMap#get:rng
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store
   local.get $11
   local.get $filteredFrequencies
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=4
   local.get $11
   call $src/utils/random/Random#pickTileIdByFrequency
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $src/wfc/wave-map/WaveMap#get:rng
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  local.get $wavePossition
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=24
  local.get $11
  call $src/wfc/wave-possition/WavePossition#get:entropy
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $~lib/array/Array<u8>#get:length
  call $src/utils/random/Random#generateRandomIndex
  local.set $tileIndex
  local.get $wavePossition
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $src/wfc/wave-possition/WavePossition#get:entropy
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  local.get $tileIndex
  call $~lib/array/Array<u8>#__get
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $src/wfc/wave/Wave#updateEntropyAt (param $this i32) (param $possition i32) (param $entropy i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $src/wfc/wave/Wave#get:wavePossition
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  local.get $possition
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:row
  i32.const 65535
  i32.and
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $possition
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:column
  i32.const 65535
  i32.and
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $entropy
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/wfc/wave-possition/WavePossition#set:entropy
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/wave-map/WaveMap#updateEntropyAt (param $this i32) (param $possition i32) (param $entropy i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/wfc/wave-map/WaveMap#get:wave
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $possition
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $entropy
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $src/wfc/wave/Wave#updateEntropyAt
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/models/tiles/super-tile/SuperTile#constructor (param $this i32) (param $entropy i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 33
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $src/models/tiles/super-tile/SuperTile#set:entropy
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  global.get $src/constants/tiles/TileIDs.NULL
  global.get $src/models/tile-socket/TileSocket.EMPTY
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 0
  call $src/models/tiles/map-tile/MapTile#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $entropy
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $src/models/tiles/super-tile/SuperTile#set:entropy
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/wfc/tile-atlas/TileAtlas#getAtlasTileById (param $this i32) (param $id i32) (result i32)
  (local $i i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $src/wfc/tile-atlas/TileAtlas#get:mapTiles
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $src/wfc/tile-atlas/TileAtlas#get:mapTiles
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $i
    call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $src/models/metadata/map-tile-metadata/MapTileMetadata#get:id
    i32.const 255
    i32.and
    local.get $id
    i32.const 255
    i32.and
    i32.eq
    if
     local.get $this
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     call $src/wfc/tile-atlas/TileAtlas#get:mapTiles
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     local.get $i
     call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     return
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/wfc/tile-atlas/TileAtlas#get:mapTiles
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/wfc/wave-map/WaveMap#getTileAtPossition (param $this i32) (param $possitionPoint i32) (result i32)
  (local $possition i32)
  (local $tileId i32)
  (local $tile i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $src/wfc/wave-map/WaveMap#get:wave
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/wfc/wave/Wave#get:wavePossition
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $possitionPoint
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:row
  i32.const 65535
  i32.and
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $possitionPoint
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:column
  i32.const 65535
  i32.and
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__get
  local.tee $possition
  i32.store offset=16
  local.get $possition
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/wave-possition/WavePossition#conflict
  if (result i32)
   i32.const 1
  else
   local.get $possition
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $src/wfc/wave-possition/WavePossition#collapsed
   i32.eqz
  end
  if
   i32.const 0
   local.get $possition
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $src/wfc/wave-possition/WavePossition#get:entropy
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $src/models/tiles/super-tile/SuperTile#constructor
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $possition
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/wfc/wave-possition/WavePossition#get:entropy
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  call $~lib/array/Array<u8>#__get
  local.set $tileId
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/wfc/wave-map/WaveMap#get:tileAtlas
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $tileId
  call $src/wfc/tile-atlas/TileAtlas#getAtlasTileById
  local.tee $tile
  i32.store offset=20
  local.get $tile
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $src/models/tiles/map-tile/MapTile#getTileSocket (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/models/tiles/map-tile/MapTile#get:tileSocket
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#constructor (param $this i32) (param $possitionPoint i32) (result i32)
  (local $topRaw i32)
  (local $bottomRaw i32)
  (local $leftRaw i32)
  (local $rightRaw i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 34
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/wave-possition-area/WavePossitionArea#set:topRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/wave-possition-area/WavePossitionArea#set:bottomRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/wave-possition-area/WavePossitionArea#set:leftRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/wave-possition-area/WavePossitionArea#set:rightRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/wave-possition-area/WavePossitionArea#set:top
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/wave-possition-area/WavePossitionArea#set:bottom
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/wave-possition-area/WavePossitionArea#set:left
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/wfc/wave-possition-area/WavePossitionArea#set:right
  local.get $possitionPoint
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:row
  i32.const 1
  i32.sub
  local.set $topRaw
  local.get $possitionPoint
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:row
  i32.const 1
  i32.add
  local.set $bottomRaw
  local.get $possitionPoint
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:column
  i32.const 1
  i32.sub
  local.set $leftRaw
  local.get $possitionPoint
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:column
  i32.const 1
  i32.add
  local.set $rightRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $topRaw
  call $src/wfc/wave-possition-area/WavePossitionArea#set:topRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bottomRaw
  call $src/wfc/wave-possition-area/WavePossitionArea#set:bottomRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $leftRaw
  call $src/wfc/wave-possition-area/WavePossitionArea#set:leftRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $rightRaw
  call $src/wfc/wave-possition-area/WavePossitionArea#set:rightRaw
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  local.get $topRaw
  local.get $possitionPoint
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:column
  call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/wfc/wave-possition-area/WavePossitionArea#set:top
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  local.get $bottomRaw
  local.get $possitionPoint
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:column
  call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/wfc/wave-possition-area/WavePossitionArea#set:bottom
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  local.get $possitionPoint
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:row
  local.get $leftRaw
  call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/wfc/wave-possition-area/WavePossitionArea#set:left
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  local.get $possitionPoint
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:row
  local.get $rightRaw
  call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $src/wfc/wave-possition-area/WavePossitionArea#set:right
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#constructor (param $this i32) (param $top i32) (param $right i32) (param $bottom i32) (param $left i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 35
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/boundries-check-result/BoundresCheckResult#set:top
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/boundries-check-result/BoundresCheckResult#set:right
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/boundries-check-result/BoundresCheckResult#set:bottom
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $src/wfc/boundries-check-result/BoundresCheckResult#set:left
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $top
  call $src/wfc/boundries-check-result/BoundresCheckResult#set:top
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $right
  call $src/wfc/boundries-check-result/BoundresCheckResult#set:right
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $bottom
  call $src/wfc/boundries-check-result/BoundresCheckResult#set:bottom
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $left
  call $src/wfc/boundries-check-result/BoundresCheckResult#set:left
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:TopRaw (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-possition-area/WavePossitionArea#get:topRaw
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:RightRaw (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-possition-area/WavePossitionArea#get:rightRaw
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:BottomRaw (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-possition-area/WavePossitionArea#get:bottomRaw
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:LeftRaw (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-possition-area/WavePossitionArea#get:leftRaw
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-map/WaveMap#checkAreaOutOfBound (param $this i32) (param $possitionArea i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $possitionArea
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $src/wfc/wave-possition-area/WavePossitionArea#get:TopRaw
  i32.const 65535
  i32.and
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $possitionArea
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $src/wfc/wave-possition-area/WavePossitionArea#get:TopRaw
   i32.const 65535
   i32.and
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $src/wfc/wave-map/WaveMap#get:height
   i32.const 65535
   i32.and
   i32.ge_u
  end
  local.get $possitionArea
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $src/wfc/wave-possition-area/WavePossitionArea#get:RightRaw
  i32.const 65535
  i32.and
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $possitionArea
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $src/wfc/wave-possition-area/WavePossitionArea#get:RightRaw
   i32.const 65535
   i32.and
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $src/wfc/wave-map/WaveMap#get:width
   i32.const 65535
   i32.and
   i32.ge_u
  end
  local.get $possitionArea
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $src/wfc/wave-possition-area/WavePossitionArea#get:BottomRaw
  i32.const 65535
  i32.and
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $possitionArea
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $src/wfc/wave-possition-area/WavePossitionArea#get:BottomRaw
   i32.const 65535
   i32.and
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $src/wfc/wave-map/WaveMap#get:height
   i32.const 65535
   i32.and
   i32.ge_u
  end
  local.get $possitionArea
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $src/wfc/wave-possition-area/WavePossitionArea#get:LeftRaw
  i32.const 65535
  i32.and
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $possitionArea
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $src/wfc/wave-possition-area/WavePossitionArea#get:LeftRaw
   i32.const 65535
   i32.and
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $src/wfc/wave-map/WaveMap#get:width
   i32.const 65535
   i32.and
   i32.ge_u
  end
  call $src/wfc/boundries-check-result/BoundresCheckResult#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#get:Top (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/boundries-check-result/BoundresCheckResult#get:top
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:Top (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-possition-area/WavePossitionArea#get:top
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/models/tile-socket/TileSocket#get:FitTop (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/models/tile-socket/TileSocket#get:fitTop
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<u8>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<u8>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 0
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<u8>#get:dataStart
  local.get $oldLen
  i32.const 0
  i32.shl
  i32.add
  local.get $value
  i32.store8
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<u8>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $src/wfc/world-generation/WorldGeneration#intersectArrays (param $this i32) (param $array1 i32) (param $array2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $result i32)
  (local $i i32)
  (local $j i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i32.const 5
  i32.const 848
  call $~lib/rt/__newArray
  local.tee $result
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $array1
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $~lib/array/Array<u8>#get:length
   i32.lt_s
   if
    i32.const 0
    local.set $j
    block $for-break1
     loop $for-loop|1
      local.get $j
      local.get $array2
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      call $~lib/array/Array<u8>#get:length
      i32.lt_s
      if
       local.get $array1
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store offset=4
       local.get $8
       local.get $i
       call $~lib/array/Array<u8>#__get
       local.get $array2
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store offset=4
       local.get $8
       local.get $j
       call $~lib/array/Array<u8>#__get
       i32.eq
       if
        local.get $result
        local.set $8
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store offset=4
        local.get $8
        local.get $array1
        local.set $8
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store offset=8
        local.get $8
        local.get $i
        call $~lib/array/Array<u8>#__get
        call $~lib/array/Array<u8>#push
        drop
        br $for-break1
       end
       local.get $j
       i32.const 1
       i32.add
       local.set $j
       br $for-loop|1
      end
     end
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $result
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#get:Bottom (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/boundries-check-result/BoundresCheckResult#get:bottom
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:Bottom (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-possition-area/WavePossitionArea#get:bottom
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/models/tile-socket/TileSocket#get:FitBottom (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/models/tile-socket/TileSocket#get:fitBottom
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#get:Left (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/boundries-check-result/BoundresCheckResult#get:left
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:Left (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-possition-area/WavePossitionArea#get:left
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/models/tile-socket/TileSocket#get:FitLeft (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/models/tile-socket/TileSocket#get:fitLeft
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/boundries-check-result/BoundresCheckResult#get:Right (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/boundries-check-result/BoundresCheckResult#get:right
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/wave-possition-area/WavePossitionArea#get:Right (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-possition-area/WavePossitionArea#get:right
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/models/tile-socket/TileSocket#get:FitRight (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/models/tile-socket/TileSocket#get:fitRight
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/world-generation/WorldGeneration#propagateState (param $this i32)
  (local $x i32)
  (local $y i32)
  (local $possitionPoint i32)
  (local $wavePossition i32)
  (local $socketTileMap i32)
  (local $possitionArea i32)
  (local $boundresCheckResult i32)
  (local $wavePossitionTop i32)
  (local $newEntropyTop i32)
  (local $wavePossitionBottom i32)
  (local $newEntropyBottom i32)
  (local $wavePossitionLeft i32)
  (local $newEntropyLeft i32)
  (local $wavePossitionRight i32)
  (local $newEntropyRight i32)
  (local $16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 68
  memory.fill
  i32.const 0
  local.set $x
  loop $for-loop|0
   local.get $x
   local.get $this
   local.set $16
   global.get $~lib/memory/__stack_pointer
   local.get $16
   i32.store
   local.get $16
   call $src/wfc/world-generation/WorldGeneration#get:width
   i32.const 65535
   i32.and
   i32.lt_u
   if
    i32.const 0
    local.set $y
    loop $for-loop|1
     local.get $y
     local.get $this
     local.set $16
     global.get $~lib/memory/__stack_pointer
     local.get $16
     i32.store
     local.get $16
     call $src/wfc/world-generation/WorldGeneration#get:height
     i32.const 65535
     i32.and
     i32.lt_u
     if
      block $for-continue|1
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       local.get $x
       local.get $y
       call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
       local.tee $possitionPoint
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store offset=12
       local.get $16
       call $src/wfc/world-generation/WorldGeneration#get:waveMap
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       local.get $possitionPoint
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store offset=8
       local.get $16
       call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
       local.tee $wavePossition
       i32.store offset=16
       local.get $wavePossition
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       call $src/wfc/wave-possition/WavePossition#collapsed
       if
        br $for-continue|1
       end
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store offset=20
       local.get $16
       call $src/wfc/world-generation/WorldGeneration#get:waveMap
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store offset=8
       local.get $16
       local.get $possitionPoint
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store offset=12
       local.get $16
       call $src/wfc/wave-map/WaveMap#getTileAtPossition
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       call $src/models/tiles/map-tile/MapTile#getTileSocket
       local.tee $socketTileMap
       i32.store offset=24
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       local.get $possitionPoint
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       call $src/wfc/wave-possition-area/WavePossitionArea#constructor
       local.tee $possitionArea
       i32.store offset=28
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store offset=12
       local.get $16
       call $src/wfc/world-generation/WorldGeneration#get:waveMap
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       local.get $possitionArea
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store offset=8
       local.get $16
       call $src/wfc/wave-map/WaveMap#checkAreaOutOfBound
       local.tee $boundresCheckResult
       i32.store offset=32
       local.get $boundresCheckResult
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       call $src/wfc/boundries-check-result/BoundresCheckResult#get:Top
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#get:waveMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $possitionArea
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/wave-possition-area/WavePossitionArea#get:Top
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
        local.tee $wavePossitionTop
        i32.store offset=36
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $wavePossitionTop
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/wave-possition/WavePossition#get:entropy
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        local.get $socketTileMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/models/tile-socket/TileSocket#get:FitTop
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#intersectArrays
        local.tee $newEntropyTop
        i32.store offset=40
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#get:waveMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $possitionArea
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/wave-possition-area/WavePossitionArea#get:Top
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        local.get $newEntropyTop
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/wave-map/WaveMap#updateEntropyAt
       end
       local.get $boundresCheckResult
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       call $src/wfc/boundries-check-result/BoundresCheckResult#get:Bottom
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#get:waveMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $possitionArea
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/wave-possition-area/WavePossitionArea#get:Bottom
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
        local.tee $wavePossitionBottom
        i32.store offset=44
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $wavePossitionBottom
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/wave-possition/WavePossition#get:entropy
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        local.get $socketTileMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/models/tile-socket/TileSocket#get:FitBottom
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#intersectArrays
        local.tee $newEntropyBottom
        i32.store offset=48
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#get:waveMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $possitionArea
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/wave-possition-area/WavePossitionArea#get:Bottom
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        local.get $newEntropyBottom
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/wave-map/WaveMap#updateEntropyAt
       end
       local.get $boundresCheckResult
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       call $src/wfc/boundries-check-result/BoundresCheckResult#get:Left
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#get:waveMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $possitionArea
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/wave-possition-area/WavePossitionArea#get:Left
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
        local.tee $wavePossitionLeft
        i32.store offset=52
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $wavePossitionLeft
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/wave-possition/WavePossition#get:entropy
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        local.get $socketTileMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/models/tile-socket/TileSocket#get:FitLeft
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#intersectArrays
        local.tee $newEntropyLeft
        i32.store offset=56
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#get:waveMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $possitionArea
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/wave-possition-area/WavePossitionArea#get:Left
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        local.get $newEntropyLeft
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/wave-map/WaveMap#updateEntropyAt
       end
       local.get $boundresCheckResult
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $16
       i32.store
       local.get $16
       call $src/wfc/boundries-check-result/BoundresCheckResult#get:Right
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#get:waveMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $possitionArea
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/wave-possition-area/WavePossitionArea#get:Right
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
        local.tee $wavePossitionRight
        i32.store offset=60
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $wavePossitionRight
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/wave-possition/WavePossition#get:entropy
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        local.get $socketTileMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/models/tile-socket/TileSocket#get:FitRight
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#intersectArrays
        local.tee $newEntropyRight
        i32.store offset=64
        local.get $this
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/world-generation/WorldGeneration#get:waveMap
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        local.get $16
        local.get $possitionArea
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=20
        local.get $16
        call $src/wfc/wave-possition-area/WavePossitionArea#get:Right
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=8
        local.get $16
        local.get $newEntropyRight
        local.set $16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=12
        local.get $16
        call $src/wfc/wave-map/WaveMap#updateEntropyAt
       end
      end
      local.get $y
      i32.const 1
      i32.add
      local.set $y
      br $for-loop|1
     end
    end
    local.get $x
    i32.const 1
    i32.add
    local.set $x
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/wave-map/WaveMap#hasOnlyConflicts (param $this i32) (result i32)
  (local $x i32)
  (local $y i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  i32.const 0
  local.set $x
  loop $for-loop|0
   local.get $x
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $src/wfc/wave-map/WaveMap#get:width
   i32.const 65535
   i32.and
   i32.lt_u
   if
    i32.const 0
    local.set $y
    loop $for-loop|1
     local.get $y
     local.get $this
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     call $src/wfc/wave-map/WaveMap#get:height
     i32.const 65535
     i32.and
     i32.lt_u
     if
      local.get $this
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=16
      local.get $3
      call $src/wfc/wave-map/WaveMap#get:wave
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=12
      local.get $3
      call $src/wfc/wave/Wave#get:wavePossition
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=8
      local.get $3
      local.get $x
      call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=4
      local.get $3
      local.get $y
      call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $3
      call $src/wfc/wave-possition/WavePossition#conflict
      i32.eqz
      if (result i32)
       local.get $this
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=16
       local.get $3
       call $src/wfc/wave-map/WaveMap#get:wave
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=12
       local.get $3
       call $src/wfc/wave/Wave#get:wavePossition
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $3
       local.get $x
       call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $3
       local.get $y
       call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       local.get $3
       call $src/wfc/wave-possition/WavePossition#collapsed
       i32.eqz
      else
       i32.const 0
      end
      if
       i32.const 0
       local.set $3
       global.get $~lib/memory/__stack_pointer
       i32.const 20
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $3
       return
      end
      local.get $y
      i32.const 1
      i32.add
      local.set $y
      br $for-loop|1
     end
    end
    local.get $x
    i32.const 1
    i32.add
    local.set $x
    br $for-loop|0
   end
  end
  i32.const 1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/wfc/wave-map/WaveMap#getValidInitialTiles (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/wfc/wave-map/WaveMap#get:tileAtlas
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/tile-atlas/TileAtlas#validInitialTiles
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/world-generation/WorldGeneration#uncollapseConflictTiles (param $this i32) (param $wavePossitionPoint i32) (param $wavePossition i32) (result i32)
  (local $possitionArea i32)
  (local $boundresCheckResult i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  local.get $wavePossition
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/wave-possition/WavePossition#conflict
  i32.eqz
  if
   i32.const 0
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $wavePossitionPoint
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=16
  local.get $5
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $src/wfc/wave-map/WaveMap#getValidInitialTiles
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/wfc/wave-map/WaveMap#updateEntropyAt
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $wavePossitionPoint
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/wave-possition-area/WavePossitionArea#constructor
  local.tee $possitionArea
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $possitionArea
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/wfc/wave-map/WaveMap#checkAreaOutOfBound
  local.tee $boundresCheckResult
  i32.store offset=24
  local.get $boundresCheckResult
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/boundries-check-result/BoundresCheckResult#get:Top
  i32.eqz
  if
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:waveMap
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   local.get $possitionArea
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/wave-possition-area/WavePossitionArea#get:Top
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:waveMap
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/wave-map/WaveMap#getValidInitialTiles
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $src/wfc/wave-map/WaveMap#updateEntropyAt
  end
  local.get $boundresCheckResult
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/boundries-check-result/BoundresCheckResult#get:Bottom
  i32.eqz
  if
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:waveMap
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   local.get $possitionArea
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/wave-possition-area/WavePossitionArea#get:Bottom
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:waveMap
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/wave-map/WaveMap#getValidInitialTiles
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $src/wfc/wave-map/WaveMap#updateEntropyAt
  end
  local.get $boundresCheckResult
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/boundries-check-result/BoundresCheckResult#get:Left
  i32.eqz
  if
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:waveMap
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   local.get $possitionArea
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/wave-possition-area/WavePossitionArea#get:Left
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:waveMap
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/wave-map/WaveMap#getValidInitialTiles
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $src/wfc/wave-map/WaveMap#updateEntropyAt
  end
  local.get $boundresCheckResult
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/boundries-check-result/BoundresCheckResult#get:Right
  i32.eqz
  if
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:waveMap
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   local.get $possitionArea
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/wave-possition-area/WavePossitionArea#get:Right
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:waveMap
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $src/wfc/wave-map/WaveMap#getValidInitialTiles
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $src/wfc/wave-map/WaveMap#updateEntropyAt
  end
  i32.const 1
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/array/Array<u8>#indexOf (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $ptr i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<u8>#get:length_
  local.set $len
  local.get $len
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $fromIndex
   local.get $len
   i32.ge_s
  end
  if
   i32.const -1
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $fromIndex
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $fromIndex
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $fromIndex
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<u8>#get:dataStart
  local.set $ptr
  loop $while-continue|0
   local.get $fromIndex
   local.get $len
   i32.lt_s
   if
    local.get $ptr
    local.get $fromIndex
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $value
    i32.const 255
    i32.and
    i32.eq
    if
     local.get $fromIndex
     local.set $7
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $7
     return
    end
    local.get $fromIndex
    i32.const 1
    i32.add
    local.set $fromIndex
    br $while-continue|0
   end
  end
  i32.const -1
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/array/Array<u8>#includes (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $value
  local.get $fromIndex
  call $~lib/array/Array<u8>#indexOf
  i32.const 0
  i32.ge_s
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/wfc/wave-map/WaveMap#isTileIsolated (param $this i32) (param $tilePossition i32) (result i32)
  (local $possition i32)
  (local $possitionPoint i32)
  (local $tileAtPossition i32)
  (local $isolationGroup i32)
  (local $possitionArea i32)
  (local $allowedSideTilesByIsolationRule i32)
  (local $onTopPossition i32)
  (local $topTileId i32)
  (local $isAllowedTopTile i32)
  (local $onRightPossition i32)
  (local $rightTileId i32)
  (local $isAllowedRightTile i32)
  (local $onBottomPossition i32)
  (local $bottomTileId i32)
  (local $isAllowedBottomTile i32)
  (local $onLeftPossition i32)
  (local $leftTileId i32)
  (local $isAllowedLeftTile i32)
  (local $20 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  local.get $tilePossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
  local.tee $possition
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $tilePossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:row
  local.get $tilePossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/wfc/wave-possition-point/WavePossitionPoint#get:column
  call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
  local.tee $possitionPoint
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  local.get $possitionPoint
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $src/wfc/wave-map/WaveMap#getTileAtPossition
  local.tee $tileAtPossition
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $tileAtPossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/models/metadata/map-tile-metadata/MapTileMetadata#get:isolationGroup
  local.tee $isolationGroup
  i32.store offset=20
  local.get $possition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/wfc/wave-possition/WavePossition#conflict
  if (result i32)
   i32.const 1
  else
   local.get $possition
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   call $src/wfc/wave-possition/WavePossition#collapsed
   i32.eqz
  end
  if (result i32)
   i32.const 1
  else
   local.get $isolationGroup
   i32.const 0
   i32.eq
  end
  if
   i32.const 1
   local.set $20
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $20
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $tilePossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/wfc/wave-possition-area/WavePossitionArea#constructor
  local.tee $possitionArea
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $tileAtPossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/models/metadata/map-tile-metadata/MapTileMetadata#get:isolationGroup
  local.tee $allowedSideTilesByIsolationRule
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  local.get $possitionArea
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=32
  local.get $20
  call $src/wfc/wave-possition-area/WavePossitionArea#get:Top
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
  local.tee $onTopPossition
  i32.store offset=36
  local.get $onTopPossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/wfc/wave-possition/WavePossition#collapsed
  if
   local.get $onTopPossition
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store offset=4
   local.get $20
   call $src/wfc/wave-possition/WavePossition#get:entropy
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   i32.const 0
   call $~lib/array/Array<u8>#__get
   local.set $topTileId
   local.get $isolationGroup
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   local.get $topTileId
   i32.const 0
   call $~lib/array/Array<u8>#includes
   local.set $isAllowedTopTile
   local.get $isAllowedTopTile
   if
    i32.const 1
    local.set $20
    global.get $~lib/memory/__stack_pointer
    i32.const 52
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $20
    return
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  local.get $possitionArea
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=32
  local.get $20
  call $src/wfc/wave-possition-area/WavePossitionArea#get:Right
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
  local.tee $onRightPossition
  i32.store offset=40
  local.get $onRightPossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/wfc/wave-possition/WavePossition#collapsed
  if
   local.get $onRightPossition
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store offset=4
   local.get $20
   call $src/wfc/wave-possition/WavePossition#get:entropy
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   i32.const 0
   call $~lib/array/Array<u8>#__get
   local.set $rightTileId
   local.get $isolationGroup
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   local.get $rightTileId
   i32.const 0
   call $~lib/array/Array<u8>#includes
   local.set $isAllowedRightTile
   local.get $isAllowedRightTile
   if
    i32.const 1
    local.set $20
    global.get $~lib/memory/__stack_pointer
    i32.const 52
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $20
    return
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  local.get $possitionArea
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=32
  local.get $20
  call $src/wfc/wave-possition-area/WavePossitionArea#get:Bottom
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
  local.tee $onBottomPossition
  i32.store offset=44
  local.get $onBottomPossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/wfc/wave-possition/WavePossition#collapsed
  if
   local.get $onBottomPossition
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store offset=4
   local.get $20
   call $src/wfc/wave-possition/WavePossition#get:entropy
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   i32.const 0
   call $~lib/array/Array<u8>#__get
   local.set $bottomTileId
   local.get $isolationGroup
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   local.get $bottomTileId
   i32.const 0
   call $~lib/array/Array<u8>#includes
   local.set $isAllowedBottomTile
   local.get $isAllowedBottomTile
   if
    i32.const 1
    local.set $20
    global.get $~lib/memory/__stack_pointer
    i32.const 52
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $20
    return
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  local.get $possitionArea
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=32
  local.get $20
  call $src/wfc/wave-possition-area/WavePossitionArea#get:Left
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
  local.tee $onLeftPossition
  i32.store offset=48
  local.get $onLeftPossition
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store
  local.get $20
  call $src/wfc/wave-possition/WavePossition#collapsed
  if
   local.get $onLeftPossition
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store offset=4
   local.get $20
   call $src/wfc/wave-possition/WavePossition#get:entropy
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   i32.const 0
   call $~lib/array/Array<u8>#__get
   local.set $leftTileId
   local.get $isolationGroup
   local.set $20
   global.get $~lib/memory/__stack_pointer
   local.get $20
   i32.store
   local.get $20
   local.get $leftTileId
   i32.const 0
   call $~lib/array/Array<u8>#includes
   local.set $isAllowedLeftTile
   local.get $isAllowedLeftTile
   if
    i32.const 1
    local.set $20
    global.get $~lib/memory/__stack_pointer
    i32.const 52
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $20
    return
   end
  end
  i32.const 0
  local.set $20
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $20
  return
 )
 (func $src/wfc/world-generation/WorldGeneration#clearTileIsolation (param $this i32) (param $wavePossitionPoint i32) (result i32)
  (local $isIsolated i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $wavePossitionPoint
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/wfc/wave-map/WaveMap#isTileIsolated
  local.set $isIsolated
  local.get $isIsolated
  i32.eqz
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $wavePossitionPoint
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $src/wfc/wave-map/WaveMap#getValidInitialTiles
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $src/wfc/wave-map/WaveMap#updateEntropyAt
  i32.const 1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/wfc/world-generation/WorldGeneration#postMapGenerationClear (param $this i32)
  (local $noConflict i32)
  (local $noIsolation i32)
  (local $x i32)
  (local $y i32)
  (local $possitionPoint i32)
  (local $wavePossition i32)
  (local $conflictUncollapsed i32)
  (local $isolationFixed i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  global.get $src/constants/generation-step/GenerationStep.POST_GENERATION_PROCESSING
  call $src/wfc/world-generation/WorldGeneration#set:generationStep
  i32.const 1
  local.set $noConflict
  i32.const 1
  local.set $noIsolation
  i32.const 0
  local.set $x
  loop $for-loop|0
   local.get $x
   local.get $this
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   call $src/wfc/world-generation/WorldGeneration#get:width
   i32.const 65535
   i32.and
   i32.lt_u
   if
    i32.const 0
    local.set $y
    loop $for-loop|1
     local.get $y
     local.get $this
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     call $src/wfc/world-generation/WorldGeneration#get:height
     i32.const 65535
     i32.and
     i32.lt_u
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      local.get $x
      local.get $y
      call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
      local.tee $possitionPoint
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $this
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=12
      local.get $9
      call $src/wfc/world-generation/WorldGeneration#get:waveMap
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store
      local.get $9
      local.get $possitionPoint
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $9
      call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
      local.tee $wavePossition
      i32.store offset=16
      local.get $this
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store
      local.get $9
      local.get $possitionPoint
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $9
      local.get $wavePossition
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=12
      local.get $9
      call $src/wfc/world-generation/WorldGeneration#uncollapseConflictTiles
      local.set $conflictUncollapsed
      local.get $this
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store
      local.get $9
      local.get $possitionPoint
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $9
      call $src/wfc/world-generation/WorldGeneration#clearTileIsolation
      local.set $isolationFixed
      local.get $conflictUncollapsed
      if
       i32.const 0
       local.set $noConflict
      end
      local.get $isolationFixed
      if
       i32.const 0
       local.set $noIsolation
      end
      local.get $y
      i32.const 1
      i32.add
      local.set $y
      br $for-loop|1
     end
    end
    local.get $x
    i32.const 1
    i32.add
    local.set $x
    br $for-loop|0
   end
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  global.get $src/constants/generation-step/GenerationStep.PROPAGATION
  call $src/wfc/world-generation/WorldGeneration#set:generationStep
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $noConflict
  if (result i32)
   local.get $noIsolation
  else
   i32.const 0
  end
  call $src/wfc/world-generation/WorldGeneration#set:clean
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/world-generation/WorldGeneration#interate (param $this i32)
  (local $wavePossition i32)
  (local $tileId i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  call $src/wfc/wave-map/WaveMap#getSmallerEntropyPossition
  local.tee $wavePossition
  i32.store offset=8
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $wavePossition
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/wfc/wave-map/WaveMap#getRandomTileFromPossition
  local.set $tileId
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=16
  local.get $5
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $wavePossition
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 0
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store offset=24
  local.get $3
  i32.const 0
  local.get $tileId
  call $~lib/array/Array<u8>#__set
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $src/wfc/wave-map/WaveMap#updateEntropyAt
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  global.get $src/constants/generation-step/GenerationStep.PROPAGATION
  call $src/wfc/world-generation/WorldGeneration#set:generationStep
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/world-generation/WorldGeneration#propagateState
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/wfc/wave-map/WaveMap#hasOnlyConflicts
  if (result i32)
   i32.const 1
  else
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#get:generationStep
   i32.const 255
   i32.and
   global.get $src/constants/generation-step/GenerationStep.POST_GENERATION_PROCESSING
   i32.eq
  end
  if
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $src/wfc/world-generation/WorldGeneration#postMapGenerationClear
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/wave/Wave#isAllCollapsed (param $this i32) (result i32)
  (local $x i32)
  (local $y i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  i32.const 0
  local.set $x
  loop $for-loop|0
   local.get $x
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $src/wfc/wave/Wave#get:width
   i32.const 65535
   i32.and
   i32.lt_u
   if
    i32.const 0
    local.set $y
    loop $for-loop|1
     local.get $y
     local.get $this
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     call $src/wfc/wave/Wave#get:height
     i32.const 65535
     i32.and
     i32.lt_u
     if
      local.get $this
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=12
      local.get $3
      call $src/wfc/wave/Wave#get:wavePossition
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=8
      local.get $3
      local.get $x
      call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=4
      local.get $3
      local.get $y
      call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $3
      call $src/wfc/wave-possition/WavePossition#collapsed
      i32.eqz
      if
       i32.const 0
       local.set $3
       global.get $~lib/memory/__stack_pointer
       i32.const 16
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $3
       return
      end
      local.get $y
      i32.const 1
      i32.add
      local.set $y
      br $for-loop|1
     end
    end
    local.get $x
    i32.const 1
    i32.add
    local.set $x
    br $for-loop|0
   end
  end
  i32.const 1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $src/wfc/wave-map/WaveMap#get:isAllCollapsed (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/wfc/wave-map/WaveMap#get:wave
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave/Wave#isAllCollapsed
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/world-generation/WorldGeneration#get:isAllCollapsed (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $src/wfc/world-generation/WorldGeneration#get:waveMap
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/wfc/wave-map/WaveMap#get:isAllCollapsed
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $src/wfc/world-generation/WorldGeneration#complete (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $while-continue|0
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $src/wfc/world-generation/WorldGeneration#get:isAllCollapsed
   i32.eqz
   if (result i32)
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $src/wfc/world-generation/WorldGeneration#get:clean
    i32.eqz
   else
    i32.const 0
   end
   if
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $src/wfc/world-generation/WorldGeneration#interate
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/world-generation/WorldGeneration#wfc (param $this i32) (param $callKind i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  global.get $src/constants/generation-step/GenerationStep.WAVE_COLLAPSE
  call $src/wfc/world-generation/WorldGeneration#set:generationStep
  block $break|0
   block $case1|0
    block $case0|0
     local.get $callKind
     i32.const 255
     i32.and
     local.set $2
     local.get $2
     global.get $src/constants/wfc-call-kind/WfcCallKind.INTERATION
     i32.eq
     br_if $case0|0
     local.get $2
     global.get $src/constants/wfc-call-kind/WfcCallKind.COMPLETE
     i32.eq
     br_if $case1|0
     br $break|0
    end
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $src/wfc/world-generation/WorldGeneration#interate
    br $break|0
   end
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $src/wfc/world-generation/WorldGeneration#complete
   br $break|0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $src/wfc/world-generation/WorldGeneration#get:isAllCollapsed
  if (result i32)
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $src/wfc/world-generation/WorldGeneration#get:clean
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   global.get $src/constants/generation-step/GenerationStep.FINISHED
   call $src/wfc/world-generation/WorldGeneration#set:generationStep
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 31
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 608
   i32.const 560
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 30
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 608
   i32.const 560
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 560
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/wfc/wave-map/WaveMap#getTileById (param $this i32) (param $id i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/wfc/wave-map/WaveMap#get:tileAtlas
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $id
  call $src/wfc/tile-atlas/TileAtlas#getAtlasTileById
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 560
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 656
   i32.const 560
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 560
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/models/metadata/world-map-metdata/WorldMapMetadata#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 29
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#set:width
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#set:height
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#set:atlasId
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#set:mapTiles
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/models/world-map/WorldMap#constructor (param $this i32) (param $width i32) (param $height i32) (param $atlasId i32) (param $mapTiles i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 36
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $width
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#set:width
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $height
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#set:height
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $atlasId
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#set:atlasId
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $mapTiles
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $src/models/metadata/world-map-metdata/WorldMapMetadata#set:mapTiles
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/wfc/world-generation/WorldGeneration#getWorldMap (param $this i32) (result i32)
  (local $mapTiles i32)
  (local $x i32)
  (local $y i32)
  (local $wavePossitonPoint i32)
  (local $wavePossition i32)
  (local $entropy i32)
  (local $mapTile i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $src/wfc/world-generation/WorldGeneration#get:width
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $src/wfc/world-generation/WorldGeneration#get:height
  i32.mul
  i32.const 65535
  i32.and
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#constructor
  local.tee $mapTiles
  i32.store offset=4
  i32.const 0
  local.set $x
  loop $for-loop|0
   local.get $x
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $src/wfc/world-generation/WorldGeneration#get:width
   i32.const 65535
   i32.and
   i32.lt_u
   if
    local.get $mapTiles
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    local.get $x
    i32.const 0
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=12
    local.get $8
    call $src/wfc/world-generation/WorldGeneration#get:height
    i32.const 65535
    i32.and
    call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#constructor
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=8
    local.get $8
    call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#__set
    i32.const 0
    local.set $y
    loop $for-loop|1
     local.get $y
     local.get $this
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     call $src/wfc/world-generation/WorldGeneration#get:height
     i32.const 65535
     i32.and
     i32.lt_u
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      local.get $x
      local.get $y
      call $src/wfc/wave-possition-point/WavePossitionPoint#constructor
      local.tee $wavePossitonPoint
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $this
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=12
      local.get $8
      call $src/wfc/world-generation/WorldGeneration#get:waveMap
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $8
      local.get $wavePossitonPoint
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      call $src/wfc/wave-map/WaveMap#getPossitionAtPoint
      local.tee $wavePossition
      i32.store offset=20
      local.get $wavePossition
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      call $src/wfc/wave-possition/WavePossition#get:entropy
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $8
      i32.const 0
      call $~lib/array/Array<u8>#__get
      local.set $entropy
      global.get $~lib/memory/__stack_pointer
      local.get $this
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      call $src/wfc/world-generation/WorldGeneration#get:waveMap
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $8
      local.get $entropy
      call $src/wfc/wave-map/WaveMap#getTileById
      local.tee $mapTile
      i32.store offset=24
      local.get $mapTiles
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=12
      local.get $8
      local.get $x
      call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $8
      local.get $y
      local.get $mapTile
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#__set
      local.get $y
      i32.const 1
      i32.add
      local.set $y
      br $for-loop|1
     end
    end
    local.get $x
    i32.const 1
    i32.add
    local.set $x
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  call $src/wfc/world-generation/WorldGeneration#get:width
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  call $src/wfc/world-generation/WorldGeneration#get:height
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  call $src/wfc/world-generation/WorldGeneration#get:atlasId
  local.get $mapTiles
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $src/models/world-map/WorldMap#constructor
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $src/index/interate (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $src/index/generator
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  global.get $src/constants/wfc-call-kind/WfcCallKind.INTERATION
  call $src/wfc/world-generation/WorldGeneration#wfc
  global.get $src/index/generator
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/wfc/world-generation/WorldGeneration#getWorldMap
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $~lib/array/Array<u8>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<u8>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/models/tiles/map-tile/MapTile>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/models/tiles/map-tile/MapTile>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/wfc/collapse-frequency/CollapseFrequency>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/wfc/wave-possition/WavePossition>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/wfc/wave-possition/WavePossition>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/array/Array<src/wfc/wave-possition/WavePossition>>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__newArray (param $length i32) (param $alignLog2 i32) (param $id i32) (param $data i32) (result i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $array i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $length
  local.get $alignLog2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  local.get $data
  call $~lib/rt/__newBuffer
  local.tee $buffer
  i32.store
  i32.const 16
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $array
  local.get $array
  local.get $buffer
  i32.store
  local.get $array
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $array
  local.get $buffer
  i32.store offset=4
  local.get $array
  local.get $bufferSize
  i32.store offset=8
  local.get $array
  local.get $length
  i32.store offset=12
  local.get $array
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
