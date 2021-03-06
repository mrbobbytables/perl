
=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1.13.7

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Kubernetes::Object::V1StorageClass;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use Kubernetes::Object::V1ObjectMeta;
use Kubernetes::Object::V1TopologySelectorTerm;

use base ( "Class::Accessor", "Class::Data::Inheritable" );

#
#StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.  StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1.13.7

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata( 'attribute_map'        => {} );
__PACKAGE__->mk_classdata( 'openapi_types'        => {} );
__PACKAGE__->mk_classdata( 'method_documentation' => {} );
__PACKAGE__->mk_classdata( 'class_documentation'  => {} );

# new plain object
sub new {
    my ( $class, %args ) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init {
    my ( $self, %args ) = @_;

    foreach my $attribute ( keys %{ $self->attribute_map } ) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{$args_key} );
    }
}

# return perl hash
sub to_hash {
    my $self  = shift;
    my $_hash = decode_json( JSON->new->convert_blessed->encode($self) );

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self  = shift;
    my $_data = {};
    foreach my $_key ( keys %{ $self->attribute_map } ) {
        if ( defined $self->{$_key} ) {
            $_data->{ $self->attribute_map->{$_key} } = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ( $self, $hash ) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ( $_key, $_type ) = each %{ $self->openapi_types } ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ( $_type =~ /^array\[(.+)\]$/i ) {    # array
            my $_subclass = $1;
            my @_array    = ();
            foreach my $_element ( @{ $hash->{$_json_attribute} } ) {
                push @_array, $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \@_array;
        }
        elsif ( $_type =~ /^hash\[string,(.+)\]$/i ) {    # hash
            my $_subclass = $1;
            my %_hash     = ();
            while ( my ( $_key, $_element ) =
                each %{ $hash->{$_json_attribute} } )
            {
                $_hash{$_key} = $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \%_hash;
        }
        elsif ( exists $hash->{$_json_attribute} )
        {    #hash(model), primitive, datetime
            $self->{$_key} =
              $self->_deserialize( $_type, $hash->{$_json_attribute} );
        }
        else {
            $log->debugf( "Warning: %s (%s) does not exist in input hash\n",
                $_key, $_json_attribute );
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ( $self, $type, $data ) = @_;
    $log->debugf( "deserializing %s with %s", Dumper($data), $type );

    if ( $type eq 'DateTime' ) {
        return DateTime->from_epoch( epoch => str2time($data) );
    }
    elsif ( grep( /^$type$/, ( 'int', 'double', 'string', 'boolean' ) ) ) {
        return $data;
    }
    else {    # hash(model)
        my $_instance = eval "Kubernetes::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}

__PACKAGE__->class_documentation(
    {
        description =>
'StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.  StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.',
        class    => 'V1StorageClass',
        required => [],                 # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'allow_volume_expansion' => {
            datatype  => 'boolean',
            base_name => 'allowVolumeExpansion',
            description =>
'AllowVolumeExpansion shows whether the storage class allow volume expand',
            format    => '',
            read_only => '',
        },
        'allowed_topologies' => {
            datatype  => 'ARRAY[V1TopologySelectorTerm]',
            base_name => 'allowedTopologies',
            description =>
'Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.',
            format    => '',
            read_only => '',
        },
        'api_version' => {
            datatype  => 'string',
            base_name => 'apiVersion',
            description =>
'APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources',
            format    => '',
            read_only => '',
        },
        'kind' => {
            datatype  => 'string',
            base_name => 'kind',
            description =>
'Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds',
            format    => '',
            read_only => '',
        },
        'metadata' => {
            datatype    => 'V1ObjectMeta',
            base_name   => 'metadata',
            description => '',
            format      => '',
            read_only   => '',
        },
        'mount_options' => {
            datatype  => 'ARRAY[string]',
            base_name => 'mountOptions',
            description =>
'Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\&quot;ro\&quot;, \&quot;soft\&quot;]. Not validated - mount of the PVs will simply fail if one is invalid.',
            format    => '',
            read_only => '',
        },
        'parameters' => {
            datatype  => 'HASH[string,string]',
            base_name => 'parameters',
            description =>
'Parameters holds the parameters for the provisioner that should create volumes of this storage class.',
            format    => '',
            read_only => '',
        },
        'provisioner' => {
            datatype    => 'string',
            base_name   => 'provisioner',
            description => 'Provisioner indicates the type of the provisioner.',
            format      => '',
            read_only   => '',
        },
        'reclaim_policy' => {
            datatype  => 'string',
            base_name => 'reclaimPolicy',
            description =>
'Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.',
            format    => '',
            read_only => '',
        },
        'volume_binding_mode' => {
            datatype  => 'string',
            base_name => 'volumeBindingMode',
            description =>
'VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.',
            format    => '',
            read_only => '',
        },
    }
);

__PACKAGE__->openapi_types(
    {
        'allow_volume_expansion' => 'boolean',
        'allowed_topologies'     => 'ARRAY[V1TopologySelectorTerm]',
        'api_version'            => 'string',
        'kind'                   => 'string',
        'metadata'               => 'V1ObjectMeta',
        'mount_options'          => 'ARRAY[string]',
        'parameters'             => 'HASH[string,string]',
        'provisioner'            => 'string',
        'reclaim_policy'         => 'string',
        'volume_binding_mode'    => 'string'
    }
);

__PACKAGE__->attribute_map(
    {
        'allow_volume_expansion' => 'allowVolumeExpansion',
        'allowed_topologies'     => 'allowedTopologies',
        'api_version'            => 'apiVersion',
        'kind'                   => 'kind',
        'metadata'               => 'metadata',
        'mount_options'          => 'mountOptions',
        'parameters'             => 'parameters',
        'provisioner'            => 'provisioner',
        'reclaim_policy'         => 'reclaimPolicy',
        'volume_binding_mode'    => 'volumeBindingMode'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;
